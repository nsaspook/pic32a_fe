#include "lcd_drv.h"
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

/*
 * This 'driver'is a merge of two  libs so it's a bit of a jumble
 * with hardware specific statements in at least two source files.
 * Because the PIC32MK version will likely only be used with graphic
 * displays much of the code is unused and will one-day be removed
 * after functional testing is complete.
 * 10/15/2021
 * uses SPI1 with a 15MHz clock for the LCD chip. 
 */

static volatile bool time_done = false;

static void delay_us(uint32_t);

//static uint32_t delay_freq = 0;

void init_lcd_drv(LCD_DVR_STATE init_type)
{
	switch (init_type) {
	case D_MISC:
	case D_BLANK:
		CSB_SetHigh(); // select SPI GLCD display, DOGXL240 @30MHz SPI clock
		lcd_init();
		OledInit();
		OledSetCharUpdate(0); // manual LCD screen updates for speed
		break;
	case D_INIT: // send the GLCD buffer data via DMA
		CSB_SetHigh(); // select SPI GLCD display, DOGXL240 @30MHz SPI clock
		delay_us(IS_DELAYPOWERUP); // > 400ms power up delay
		lcd_init();
		OledInit();
		RLED_Set();
		OledSetCharUpdate(0); // manual LCD screen updates for speed
		OledMoveTo(bmp_x, bmp_y); // position image
		OledPutBmp(bmp_size, bmp_size, (uint8_t *) foo_map); // upload bitmap image from C array
		delay_us(BMP_DELAY); // show image for a bit
		break;
	default:
		break;
	}

}

/* This function is called after period expires */
void SCCP1_Callback_InterruptHandler(uint32_t status, uintptr_t context)
{
	time_done = true;
}

/*
 * microsecond busy wait delay, 90 seconds MAX
 */
void delay_us(uint32_t us)
{
	if (us == 0) {
		return;
	}
	time_done = false;
	SCCP1_TimerCallbackRegister(SCCP1_Callback_InterruptHandler, (uintptr_t) NULL);
	SCCP1_Timer32bitPeriodSet(us);
	SCCP1_TimerStart();
	while (!time_done) {
	};
	SCCP1_TimerStop();
}

void backlight_on(void)
{
	if (DIS_MODE_Get() == 1)
		DIS_MODE_Clear();
}

void backlight_off(void)
{
	if (DIS_MODE_Get() == 0)
		DIS_MODE_Set();
}