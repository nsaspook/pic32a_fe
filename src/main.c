/*
 * PIC32A analog sensor demo design
 * testing code to design a PCB from
 */

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include "definitions.h"                // SYS function prototypes

#include "lcd_drv/lcd_drv.h"
#include "timers.h"
#include "samples.h"
#include "is66.h"

static char buffer[256];
volatile uint16_t tickCount[TMR_COUNT];

int main(void)
{
	/* Initialize all modules */
	SYS_Initialize(NULL);

	TMR1_CallbackRegister(timer_ms_tick, 0);
	TMR1_InterruptEnable();
	TMR1_Start(); // software timers hardware time-base

	/*
	 * setup GLCD background update tasks
	 */
	init_lcd_drv(D_INIT);
	OledClearBuffer();
	wait_lcd_done();

	snprintf(buffer, 255, "DEV%X REV%X U%X%X   ", *(uint32_t*) 0x7C2000, *(uint32_t*) 0x7C2004, *(uint32_t*) 0x7F2BE0, *(uint32_t*) 0x7F2BE4);
	eaDogM_WriteStringAtPos(15, 0, buffer);
	OledUpdate();
	StartTimer(TMR_TEST, 2);
	/*
	 * read the iss66 chip ID register
	 * will convert to a proper ID function later, now it's just for display
	 */
	SRAM_CS_Clear();
	SPI2_WriteRead((void *) iss_read_id, sizeof(iss_read_id), iss_read_id_buffer, sizeof(iss_read_id));
	while (!TimerDone(TMR_TEST)) {
	};
	SRAM_CS_Set();
	ADC_DMA_init(); // setup background ADC data tasks

	StartTimer(TMR_TEST, 2); // GLCD screen updates every 2ms
	SCCP2_TimerStart(); // ADC timer start
	while (true) {
		static uint32_t loops = 0;
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();
		RLED_Toggle();
		if (TimerDone(TMR_TEST)) {
			snprintf(buffer, 255, "S%u T%u ID%X%X%X V%u   ", loops++, total_sample_triggers, iss_read_id_buffer[4], iss_read_id_buffer[5], iss_read_id_buffer[6], adc_result);
			eaDogM_WriteStringAtPos(1, 0, buffer);
			OledUpdate();
			StartTimer(TMR_TEST, 2);
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}


/*******************************************************************************
 End of File
 */

