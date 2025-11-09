#include <xc.h>
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include "definitions.h"                // SYS function prototypes

#include "lcd_drv/lcd_drv.h"
#include "timers.h"

uint8_t iss_adc_write[4] = {0x02, 0x00, 0x00, 0x00};
uint32_t adc_result = 0;

void ADC_DMA_write(void)
{
	DMA_ChannelTransfer(DMA_CHANNEL_5, (const void *) iss_adc_write, (const void*) &SPI2BUF, (size_t) 4);
	while (DMA_ChannelIsBusy(DMA_CHANNEL_5)) {
	};

	AD1SWTRGbits.CH6TRG = 1;
	DMA_ChannelTransfer(DMA_CHANNEL_5, (const void *) &AD1CH6DATA, (const void*) &SPI2BUF, (size_t) 4);
	while (DMA_ChannelIsBusy(DMA_CHANNEL_5)) {
	};
	SRAM_CS_Set();
	adc_result = AD1CH6DATA;
};

void ADC_DMA_read(void)
{

};

void SPI2DmaChannelHandler_State(DMA_TRANSFER_EVENT event, uintptr_t contextHandle)
{
	if (event == DMA_TRANSFER_EVENT_HALF_COMPLETE) {
		adc_result = AD1CH6DATA;
		AD1SWTRGbits.CH6TRG = 1;
		while (AD1STATbits.CH6RDY == 0);
	}
}

void ADC_DMA_init(void)
{
	// Select single conversion mode on channel 6 to AN6
	AD1CH6CONbits.MODE = 0;
	// Software trigger will start a conversion.
	AD1CH6CONbits.TRG1SRC = 1;
	AD1CH6CONbits.TRG2SRC = 0;
	// Use a differential input.
	AD1CH6CONbits.DIFF = 0;
	// Select the AN6 analog positive input/pin for the signal.
	AD1CH6CONbits.PINSEL = 6;
	// Select signal sampling time (0.5 TADs = 6.25nS).
	AD1CH6CONbits.SAMC = 0;
	// Set ADC to RUN mode.
	AD1CONbits.MODE = 2;
	// Enable ADC.
	AD1CONbits.ON = 1;
	// Wait when ADC will be ready/calibrated.
	while (AD1CONbits.ADRDY == 0);
	
	// Trigger channel #6 in software and wait for the result.
	AD1SWTRGbits.CH6TRG = 1;
	// Wait for a conversion ready flag.
	while (AD1STATbits.CH6RDY == 0);
	// Read result. It will clear the conversion ready flag.
	adc_result = AD1CH6DATA;

	DMA_ChannelCallbackRegister(DMA_CHANNEL_5, SPI2DmaChannelHandler_State, 0);

}