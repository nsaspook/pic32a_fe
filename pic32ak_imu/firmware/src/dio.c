#include "dio.h"

#define IN4_Get()               ((PORTB >> 4) & 0x1) // FLT15 signal

static volatile S_data S;

/*
 * setup external interrupt for input chip and read initial switch condition
 */
void init_dio(void)
{
	MAX_EN1_Set(); // disable MAX output pins
	INTCONCLR = _INTCON_INT0EP_MASK; //External interrupt on falling edge
	IFS0CLR = _IFS0_INT0IF_MASK; // Clear the external interrupt flag
	EVIC_ExternalInterruptCallbackRegister(EXTERNAL_INT_0, update_di, 0);
	EVIC_ExternalInterruptEnable(EXTERNAL_INT_0);
	RESET_LED_Clear();
	update_di(0, 0);
}

/*
 * update switch data during the MAX6818 external 0 interrupt CN signal
 */
void update_di(uint32_t a, uintptr_t b)
{
	static uint32_t switch_data = 0;
	uint8_t i = 0, sw_value;

	MAX_EN1_Clear(); // enable MAX output pins and reset MAX cn interrupt pin

	switch_data++;
	RESET_LED_Toggle();
	// start reading the various pic port input bits after the max chip is ready
	do {
		switch (i) {
		case S0:
			sw_value = IN1_Get();
			break;
		case S1:
			sw_value = IN2_Get();
			break;
		case S2:
			sw_value = IN3_Get();
			break;
		case S3:
			sw_value = IN4_Get();
			break;
		case S4:
			sw_value = IN5_Get();
			break;
		case S5:
			sw_value = IN6_Get();
			break;
		case S6:
			sw_value = IN7_Get();
			break;
		case S7:
			sw_value = IN8_Get();
			break;
		default:
			sw_value = 1;
			break;
		}

		// update actual current button state
		if (sw_value) {
			if (S.button[i].sw == SW_ON) {
				S.button[i].sw = SW_OFF;
			}
		} else {
			if (S.button[i].sw == SW_OFF) {
				S.button[i].sw = SW_ON;
				S.sw_bitmap |= 1 << i; // set switch pressed bit
			}
		}
	} while (++i < NUM_SWITCHES);

	MAX_EN1_Set(); // disable MAX output pins
}

/*
 * return the current actual state of x switch
 * the actual current state of a switch is ONLY changed in the interrupt handler
 */
SW_STATES get_switch(const uint8_t i)
{
	if (i >= NUM_SWITCHES) {
		return SW_OFF;
	}

	return S.button[i].sw;
}

/*
 * return the bitmap state of x switch
 * the actual current state of a switch is ONLY changed in the interrupt handlerupdate_di(void)
 */
SW_STATES get_switch_bm(const uint8_t i)
{
	if (i >= NUM_SWITCHES) {
		return SW_OFF;
	}

	return(S.sw_bitmap >> i)&0x01;
}

/*
 * return the x switch structure
 * mainly for testing
 */
rbutton_type get_switch_data(const uint8_t i)
{
	static rbutton_type error_button = {.sw = SW_INVALID};

	if (i >= NUM_SWITCHES) {
		return error_button;
	}

	return S.button[i];
}

/*
 * check the switch pressed bitmap for button presses, the actual current switch state might differ
 */
uint8_t check_switches(void)
{
	return S.sw_bitmap;
}

/*
 * clear X switch pressed and time pressed data
 */
void clear_switch(const uint8_t i)
{
	if (i >= NUM_SWITCHES) {
		return;
	}

	S.button[i].count = 0;
	S.sw_bitmap &= ~(1 << i); //clear switch pressed bit
}
