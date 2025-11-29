/*
 * is66 setup and R/W functions
 */
#include <xc.h>
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include "definitions.h"                // SYS function prototypes

#define __has_builtin			// use Built-in Byte Swap Functions

//#define USE_SRAM
//#define DMA_HALF

#define MAX_ISS66_SAMPLES	32768
#define CDOWN	8

static const uint32_t retrigger_time = 350;
volatile uint8_t iss_adc_write[8] = {0x02, 0x00, 0x00, 0x00}; // 1024 bytes in each address page for sequential writes
uint8_t sram_adc_write[8];
volatile uint32_t adc_result = 0, total_sample_triggers = 0;
volatile uint16_t sram_addr = 0, *sram_addr_ptr = (volatile uint16_t *) & iss_adc_write[2];

/*
 * swap16 for iss66 addresses
 * The htonx() functions converts the unsigned integer from host byte order to network byte order
 * as used on the Internet
 */
static inline uint16_t htons(uint16_t x)
{
	return((x >> 8) & 0x00FFUL) | ((x << 8) & 0xFF00UL);
}

static inline uint32_t htonl(uint32_t x)
{
	return((x >> 24) & 0x000000FFUL) | ((x << 24) & 0xFF000000UL) |
		((x >> 8) & 0x0000FF00UL) | ((x << 8) & 0x00FF0000UL);
}

/*
 * setup the iss66 command buffer and DMA the data to the chip
 */
void ADC_DMA_write(void)
{
#ifndef USE_SRAM
	AD1SWTRGbits.CH6TRG = 1;
	TP0_Set();
	while (AD1STATbits.CH6RDY == 0);
	TP0_Clear();
	adc_result = AD1CH6DATA >> 1;
	memcpy((void *) &iss_adc_write[4], (const void *) &adc_result, 4);

#if defined __has_builtin
#if __has_builtin (__builtin_bswap16)
	*sram_addr_ptr = __builtin_bswap16(sram_addr);
#else
	*sram_addr_ptr = htons(sram_addr);
#endif
#else
	*sram_addr_ptr = htons(sram_addr);
#endif
	if ((sram_addr += 2) >= MAX_ISS66_SAMPLES) {
		sram_addr = 0;
		total_sample_triggers++;
		//		TP0_Toggle();
	};

	while (DMA_ChannelIsBusy(DMA_CHANNEL_5)) {
	};
#ifndef USE_SRAM
	SRAM_CS_Clear(); // CS will bet set in DMA complete ISR
#endif
	DMA_ChannelTransfer(DMA_CHANNEL_5, (const void *) iss_adc_write, (const void*) &SPI2BUF, (size_t) 6);
#endif
};

/*
 * iss66 data reads using DMA
 * on the todo list
 */
void ADC_DMA_read(void)
{

};

/*
 * DMA event callback processor
 */
void SPI2DmaChannelHandler_State(DMA_TRANSFER_EVENT event, uintptr_t contextHandle)
{
	static uint32_t cdown = CDOWN;
#ifdef DMA_HALF
	if (event == DMA_TRANSFER_EVENT_HALF_COMPLETE) {
		// stuff
	}
#endif
	if (event == DMA_TRANSFER_EVENT_COMPLETE) {
#ifndef USE_SRAM
		while (SPI2_IsTransmitterBusy() && --cdown != 0);
		cdown = CDOWN;
		SRAM_CS_Set();
#endif
	}
}

/*
 * Time trigger for ADC conversion and iss66 data writes
 */
void SCCP2_Callback_InterruptHandler(uint32_t status, uintptr_t context)
{
	ADC_DMA_write();
}

void ADC_DMA_init(void)
{
	// Select conversion mode on channel 6 to AN6
	AD1CH6CONbits.MODE = 3; // 0 = single, 3 = oversample
	// Set number of conversions accumulated to 2 because of back-to-back.
	AD1CH4CONbits.ACCNUM = 0;
	// The oversampling if started cannot be interrupted
	// by a high priority channels conversion requests.
	AD1CH4CONbits.ACCBRST = 1;
	// Software trigger will start a conversion.
	AD1CH6CONbits.TRG1SRC = 1; // software
	AD1CH6CONbits.TRG2SRC = 2; // back-to-back
	// Use a single-ended input.
	AD1CH6CONbits.DIFF = 0;
	// Select the AN6 analog positive input/pin for the signal.
	AD1CH6CONbits.PINSEL = 6;
	// Select signal sampling time ( 0 = TADs = 6.25nS).
	AD1CH6CONbits.SAMC = 1; // 12.5ns
	// Enable repeat rate.
	AD1CONbits.CALRATE = 3;
	// Enable auto calibration.
	AD1CONbits.ACALEN = 1;
	// Set ADC to RUN mode.
	AD1CONbits.MODE = 2;
	// Enable ADC.
	AD1CONbits.ON = 1;
	// Wait when ADC will be ready/calibrated.
	while (AD1CONbits.ADRDY == 0);

	// Trigger channel #6 in software and wait for the result.
	AD1SWTRGbits.CH6TRG = 1;
	TP0_Set();
	// Wait for a conversion ready flag.
	while (AD1STATbits.CH6RDY == 0);
	TP0_Clear();
	// Read result. It will clear the conversion ready flag.
	adc_result = AD1CH6DATA >> 1;

	/*
	 * setup the DMA and timer background tasks
	 */
	DMA_ChannelCallbackRegister(DMA_CHANNEL_5, SPI2DmaChannelHandler_State, 0);
	SCCP2_TimerCallbackRegister(SCCP2_Callback_InterruptHandler, (uintptr_t) NULL);
	SCCP2_Timer32bitPeriodSet(retrigger_time); //  close to 3.5us timer interrupts
}