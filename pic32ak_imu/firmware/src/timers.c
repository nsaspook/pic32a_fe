#include "vcan.h"
#include "timers.h"
#include "adc_scan.h"

extern volatile uint16_t tickCount[TMR_COUNT];

//**********************************************************************************************************************
// Start one of the software timers

void StartTimer(const uint8_t timer, const uint16_t count)
{
	tickCount[timer] = count << 1; //Interrupt is every 500us but StartTimer() takes multiple of 1ms so multiply by 2
}

//**********************************************************************************************************************
// Check if one of the software software timers has timed out

bool TimerDone(const uint8_t timer)
{
	if (tickCount[timer] == 0) { //Check if counted down to zero
		return true; //then return true
	}
	return false; //else return false
}

//**********************************************************************************************************************
// Simple delay for n milliseconds (blocking)

void WaitMs(const uint16_t numMilliseconds)
{
	StartTimer(TMR_INTERNAL, numMilliseconds); //Start software timer and wait for it to count down
	while (!TimerDone(TMR_INTERNAL)) {
		Nop();
		Nop();
		Nop();
		Nop();
		//		ClrWdt(); // reset the WDT timer
		//		Idle();
	} //Enter idle mode to reduce power while waiting
} //(timer interrupt will wake part from idle)

/*
 * timer #6
 */
void timer_ms_tick(uint32_t status, uintptr_t context)
{
#ifdef G400HZ
	//	start_adc_scan();
#endif
	//Decrement each software timer
	for (uint i = 0; i < TMR_COUNT; i++) {
		if (tickCount[i] != 0) {
			tickCount[i]--;
		}
	}
}

/*
 * microsecond busy wait delay, 90 seconds MAX
 * Careful, uses core timer
 */
void delay_us(uint32_t us)
{
	// Convert microseconds us into how many clock ticks it will take
	us *= SYS_FREQ / 1000000 / 2; // Core Timer updates every 2 ticks

	_CP0_SET_COUNT(0); // Set Core Timer count to 0

	while (us > _CP0_GET_COUNT()) {
	}; // Wait until Core Timer count reaches the number we calculated earlier
}

void delay_ms(uint32_t ms)
{
	WaitMs(ms);
}