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
#include "samples.h"

#define __has_builtin			// use Built-in Byte Swap Functions

//#define USE_SRAM
//#define DMA_HALF

static const uint32_t MAX_ISS66_SAMPLES = 32768;
static const uint16_t CDOWN = 8;
static const uint32_t retrigger_time = 600;
volatile uint8_t iss_adc_write[8] = {0x02, 0x00, 0x00, 0x00}; // 1024 bytes in each address page for sequential writes
volatile uint8_t iss_adc_read[16] = {0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile uint8_t sram_adc_write[8], sram_adc_read[16] = {1, 2, 3, 4, 5, 6, 7, 8};
volatile uint32_t total_sample_triggers = 0;
volatile uint16_t sram_addr = 0, *sram_addr_ptr = (volatile uint16_t *) & iss_adc_write[2]; // pointer to address bytes
volatile uint16_t sram_addr_read = 0, *sram_addr_read_ptr = (volatile uint16_t *) & iss_adc_read[2]; // pointer to address bytes
volatile uint16_t adc_result[NUM_ADC] = {0, 0};

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
	/*
	 * trigger both ADC's
	 */
	AD1SWTRGbits.CH6TRG = 1;
	AD2SWTRGbits.CH4TRG = 1;
	while (AD1STATbits.CH6RDY == 0 && AD2STATbits.CH4RDY == 0); // conversions complete on both
	adc_result[ADC1_D] = (uint16_t) AD1CH6DATA; // save as uint16_t data
	adc_result[ADC2_D] = (uint16_t) AD2CH4DATA;
	memcpy((void *) &iss_adc_write[4], (const void *) &adc_result[ADC1_D], 4);

	/*
	 * swap address bytes for serial SRAM addressing and update address bytes
	 */
#if defined __has_builtin
#if __has_builtin (__builtin_bswap16)
	*sram_addr_ptr = __builtin_bswap16(sram_addr);
#else
	*sram_addr_ptr = htons(sram_addr);
#endif
#else
	*sram_addr_ptr = htons(sram_addr);
#endif
	if ((sram_addr += 4) >= MAX_ISS66_SAMPLES) {
		sram_addr = 0;
		total_sample_triggers++;
		//		TP0_Toggle();
	};

	/*
	 * make sure DMA is ready for next sequence
	 */
	while (DMA_ChannelIsBusy(DMA_CHANNEL_5)) {
	};
#ifndef USE_SRAM
	SRAM_CS_Clear(); // CS will bet set in DMA complete ISR
#endif
	/*
	 * write sram chip data address and two 16-bit ADC results to chip for later processing
	 */
	DMA_ChannelTransfer(DMA_CHANNEL_5, (const void *) iss_adc_write, (const void*) &SPI2BUF, (size_t) 8);
#endif
};

/*
 * iss66 data reads using DMA
 * on the todo list
 */
void ADC_DMA_read(void)
{
#ifndef USE_SRAM
	/*
	 * swap address bytes for serial SRAM addressing and update address bytes
	 */
#if defined __has_builtin
#if __has_builtin (__builtin_bswap16)
	*sram_addr_read_ptr = __builtin_bswap16(sram_addr_read);
#else
	*sram_addr_ptr = htons(sram_addr_read);
#endif
#else
	*sram_addr_ptr = htons(sram_addr_read);
#endif
	//	if ((sram_addr_read += 4) >= 16) {
	//		sram_addr_read = 0;
	//	};

	/*
	 * make sure DMA is ready for next sequence
	 */
	SCCP2_TimerStop();
	while (DMA_ChannelIsBusy(DMA_CHANNEL_5)) {
	};
	//	while (DMA_ChannelIsBusy(DMA_CHANNEL_4)) {
	//	};
#ifndef USE_SRAM
	SRAM_CS_Clear(); // CS will bet set in DMA complete ISR
#endif

	//SPI2_WriteRead((void*) iss_adc_read, 9, (void*) sram_adc_read, 9);

	DMA_ChannelTransfer(DMA_CHANNEL_4, (const void *) &SPI2BUF, (const void*) sram_adc_read, (size_t) 9);
	/*
	 * write sram chip data address and two 16-bit ADC results to chip for later processing
	 */
	DMA_ChannelTransfer(DMA_CHANNEL_5, (const void *) iss_adc_read, (const void*) &SPI2BUF, (size_t) 9);
	//	DMA_ChannelTransfer(DMA_CHANNEL_4, (const void *) &SPI2BUF, (const void*) sram_adc_read, (size_t) 9);
	SCCP2_Timer32bitPeriodSet(retrigger_time + retrigger_time);
	SCCP2_TimerStart();
#endif
};

/*
 * DMA event callback processor
 */
void SPI2DmaChannelHandler_State(DMA_TRANSFER_EVENT event, uintptr_t contextHandle)
{
	static uint32_t cdown = CDOWN;

	if (event == DMA_TRANSFER_EVENT_COMPLETE) {
#ifndef USE_SRAM
		while (SPI2_IsTransmitterBusy() && --cdown != 0); // SPI buffer empty timeout
		cdown = CDOWN;
		SRAM_CS_Set();
#endif
	}
}

void SPI2DmaChannelHandler_State_Read(DMA_TRANSFER_EVENT event, uintptr_t contextHandle)
{
	if (event == DMA_TRANSFER_EVENT_COMPLETE) {

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
	AD2CH4CONbits.MODE = 3;
	// Set number of conversions accumulated to 2 because of back-to-back.
	AD1CH6CONbits.ACCNUM = 0;
	AD2CH4CONbits.ACCNUM = 0;
	// The oversampling if started cannot be interrupted
	// by a high priority channels conversion requests.
	AD1CH6CONbits.ACCBRST = 1;
	AD2CH4CONbits.ACCBRST = 1;
	// Software trigger will start a conversion.
	AD1CH6CONbits.TRG1SRC = 1; // software
	AD1CH6CONbits.TRG2SRC = 2; // back-to-back
	AD2CH4CONbits.TRG1SRC = 1; // software
	AD2CH4CONbits.TRG2SRC = 2;
	// Use a single-ended input.
	AD1CH6CONbits.DIFF = 0;
	// Select the AN6 analog positive input/pin for the signal.
	AD1CH6CONbits.PINSEL = 6;
	// Select signal sampling time ( 0 = TADs = 6.25nS).
	AD1CH6CONbits.SAMC = 1; // 12.5ns
	AD2CH4CONbits.SAMC = 1;
	// Enable repeat rate.
	AD1CONbits.CALRATE = 1;
	AD2CONbits.CALRATE = 1;
	// Enable auto calibration.
	AD1CONbits.ACALEN = 1;
	AD2CONbits.ACALEN = 1;
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
	adc_result[ADC1_D] = AD1CH6DATA;

	/*
	 * setup the DMA and timer background tasks
	 */
	DMA_ChannelCallbackRegister(DMA_CHANNEL_5, SPI2DmaChannelHandler_State, 0);
	//	DMA_ChannelCallbackRegister(DMA_CHANNEL_4, SPI2DmaChannelHandler_State_Read, 0);
	SCCP2_TimerCallbackRegister(SCCP2_Callback_InterruptHandler, (uintptr_t) NULL);
	SCCP2_Timer32bitPeriodSet(retrigger_time); //  close to 3.5us timer interrupts
}