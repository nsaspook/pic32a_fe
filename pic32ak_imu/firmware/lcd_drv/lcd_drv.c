#include "lcd_drv.h"

/*
 * This 'driver'is a merge of two  libs so it's a bit of a jumble
 * with hardware specific statements in at least two source files.
 * Because the PIC32MK version will likely only be used with graphic
 * displays much of the code is unused and will one-day be removed
 * after functional testing is complete.
 * 10/15/2021
 * uses SPI3 with a 15MHz clock for the LCD chip. 
 */
static volatile uint8_t NOPER = 0;

void init_lcd_drv(LCD_DVR_STATE init_type)
{
	switch (init_type) {
	case D_MISC:
	case D_INIT: // send the GLCD buffer data via DMA
#ifdef EDOGM
		init_display();
		eaDogM_CursorOff();
#endif
#ifdef EDOGS
		SPI_EN1_Set(); // select SPI GLCD display, DOGXL240 @15MHz SPI clock
		dmtdelay(IS_DELAYPOWERUP); // > 400ms power up delay
		lcd_init();
		OledInit();
		OledSetCharUpdate(0); // manual LCD screen updates for speed
		OledMoveTo(bmp_x, bmp_y); // position image
		OledPutBmp(bmp_size, bmp_size, (uint8_t *) foo_map); // upload bitmap image from C array
		dmtdelay(BMP_DELAY); // show image for a bit
#endif
		break;
	default:
		break;
	}
}

/*
 * delay routine that clears the DMT in the required instruction count window
 */
void dmtdelay(const uint32_t delay)
{
	uint32_t dcount; // keep this static to force loop timing
	uint32_t dmt_clear_count = DMT_INST_COUNT;

	for (dcount = 0; dcount <= delay; dcount++) { // delay a bit
		if (!dmt_clear_count--) {
			DMT_Clear(); // clear the Dead Man Timer
			dmt_clear_count = DMT_INST_COUNT;
		}
		NOPER++;
	};
}