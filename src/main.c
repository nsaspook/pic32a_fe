/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include "definitions.h"                // SYS function prototypes

#include "lcd_drv/lcd_drv.h"
#include "timers.h"

static char buffer[256];
volatile uint16_t tickCount[TMR_COUNT];
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	/* Initialize all modules */
	SYS_Initialize(NULL);

	TMR1_CallbackRegister(timer_ms_tick, 0);
	TMR1_InterruptEnable();
	TMR1_Start(); // software timers counter

	init_lcd_drv(D_INIT);
	OledClearBuffer();
	wait_lcd_done();


	snprintf(buffer, 255, "Testing PIC32AK   ");
	eaDogM_WriteStringAtPos(15, 0, buffer);
	OledUpdate();
	StartTimer(TMR_TEST, 2);
	while (true) {
		static uint32_t loops=0;
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();
		RLED_Toggle();
		if (TimerDone(TMR_TEST)) {
			snprintf(buffer, 255, "Running  %u ",loops++);
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

