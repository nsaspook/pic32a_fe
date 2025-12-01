#ifndef TIMERS_H
#define TIMERS_H

#include <stdint.h>
#include <stdbool.h>

//Software timers - use these to refer to timers rather than
//integers.  Add more as needed.
//NOTE: 32767 ms max delay

enum APP_TIMERS {
	TMR_INTERNAL = 0, //Used in timers.c - do not remove or use elsewhere
	TMR_BLINK,
	TMR_MOTOR,
	TMR_VEL,
	TMR_LCD_UP,
	TMR_MC_TX,
	TMR_HBIO,
	TMR_INFO,
	TMR_HELP,
	TMR_HELPDIS,
	TMR_DISPLAY,
	TMR_FLIPPER,
	TMR_ADC,
	TMR_TEXT,
	TMR_DMT,
	//
	//(Add timers here as needed)
	//
	TMR_COUNT //number of timers - always keep at end of enum!
};

void StartTimer(const uint8_t timer, const uint16_t count);
bool TimerDone(const uint8_t timer);
void WaitMs(const uint16_t numMilliseconds);
void timer_ms_tick(uint32_t, uintptr_t);

void delay_ms(uint32_t);

#endif //TIMERS_H
