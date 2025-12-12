/*
 * is66 setup and R/W functions
 */
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include "definitions.h"                // SYS function prototypes
#include "samples.h"
#include "timers.h"

static const uint8_t iss_read_id[SAMPLE_BUF] = {0x9F};
static const uint32_t ISS_PAGE_WRITE = 0x02000000;
static const uint16_t CDOWN = SAMPLE_TIMEOUT;
static const uint32_t retrigger_time = RETRIGGER_TIME;
static uint32_t ISS_PAGE_WRITE_CMD, iss_page_index, store_count, cdown = CDOWN,
	iss_page_write_swap, iss_page_num = MAX_ISS66_PAGES_32MBIT;

uint8_t iss_read_id_buffer[SAMPLE_BUF];
uint8_t iss_adc_read[SAMPLE_BUF] = {0x0B, 0x01, 0x0c, 0x00, 0x00}; // ISS sram testing page
uint8_t sram_adc_read[SAMPLE_BUF];
uint16_t adc_iss_result[NUM_ADC] = {0, 0};

volatile uint8_t iss_adc_write[SAMPLE_BUF]; // 1024 bytes in each address page for sequential writes
volatile uint32_t total_sample_triggers = 0, total_iss_triggers = 0;
volatile uint16_t adc_result[NUM_ADC] = {0, 0};
volatile enum iss_sample_type iss_state = ISS_INIT;

enum iss_chip_type iss_chip = ISS_ISS_UNK;
enum iss_chip_type ISS_read_id(void);

/*
 * swapXX for iss66 addresses
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
	TP1_Set();
	/*
	 * trigger both ADC's
	 */
	AD1SWTRGbits.CH6TRG = 1;
	AD2SWTRGbits.CH4TRG = 1;
	while (AD1STATbits.CH6RDY == 0 && AD2STATbits.CH4RDY == 0); // conversions complete on both
	adc_result[ADC1_D] = (uint16_t) AD1CH6DATA; // save as uint16_t data
	adc_result[ADC2_D] = (uint16_t) AD2CH4DATA;
	memcpy((void *) &iss_adc_write[ADC_SAMPLES_START], (const void *) &adc_result[ADC1_D], ADC_SAMPLES_SIZE);
	TP1_Clear();

	switch (iss_state) {
	case ISS_INIT:
		store_count = 0;
		ISS_PAGE_WRITE_CMD = ISS_PAGE_WRITE;
		iss_page_index = 0;
		iss_state = ISS_PAGE;
		iss_page_write_swap = htonl(ISS_PAGE_WRITE_CMD);
		break;
	case ISS_PAGE:
		TP0_Set();
		while (SPI2_IsTransmitterBusy() && --cdown != 0); // SPI buffer empty timeout
		cdown = CDOWN;
		SRAM_CS_Set();
		/*
		 * make sure DMA is ready for address sequence
		 */
		while (DMA_ChannelIsBusy(DMA_CHANNEL_5)) {
		};
		SRAM_CS_Clear(); // enable chip
		/*
		 * write sram chip data address
		 */
		DMA_ChannelTransfer(DMA_CHANNEL_5, (const void *) &iss_page_write_swap, (const void*) &SPI2BUF, ISS_WRITE_CMD_SIZE);
		total_sample_triggers++;
		if (++iss_page_index >= iss_page_num) {
			iss_state = ISS_INIT; // back to init state
		} else {
			iss_state = ISS_STORE;
			ISS_PAGE_WRITE_CMD += ISS66_PAGE_SIZE; // next full sram page
			iss_page_write_swap = htonl(ISS_PAGE_WRITE_CMD);
		}
		TP0_Clear();
		break;
	case ISS_STORE:
		while (DMA_ChannelIsBusy(DMA_CHANNEL_5)) {
		};
		SRAM_CS_Clear(); // enable chip
		DMA_ChannelTransfer(DMA_CHANNEL_5, (const void *) &iss_adc_write[ADC_SAMPLES_START], (const void*) &SPI2BUF, ADC_SAMPLES_SIZE);
		if (++store_count >= MAX_ISS66_SAMPLES) {
			store_count = 0;
			iss_state = ISS_PAGE;
		}
		break;
	case ISS_NULL:
		break;
	default:
		iss_state = ISS_INIT;
		break;
	}
};

/*
 * iss66 data reads using interrupt driver
 * DMA on the todo list
 */
void ADC_DMA_read(void)
{
	SCCP2_TimerStop();
	SRAM_CS_Set();
	while (DMA_ChannelIsBusy(DMA_CHANNEL_5)) {
	};
	SRAM_CS_Clear(); // CS will be set in ADC_DMA_WRITE

#ifndef ISS_DMA_READ
	SPI2_WriteRead((void*) iss_adc_read, ISS_FAST_CMD_SIZE, (void*) sram_adc_read, SRAM_READ_SAMPLES); // 4 bytes for 32-bit command with 8 extra clocks
	while (SPI2_IsBusy());
	total_iss_triggers++;
#else
	DMA_ChannelTransfer(DMA_CHANNEL_4, (const void *) &SPI2BUF, (const void*) sram_adc_read, SRAM_READ_SAMPLES);
	/*
	 * write sram chip data address to start read processing
	 */
	DMA_ChannelTransfer(DMA_CHANNEL_5, (const void *) iss_adc_read, (const void*) &SPI2BUF, SRAM_READ_SAMPLES);
#endif
	SCCP2_Timer32bitPeriodSet(retrigger_time);
	SCCP2_TimerStart();
	adc_iss_result[ADC1_D] = sram_adc_read[5] + (sram_adc_read[6] << 8); // store 16-bit results into results array
	adc_iss_result[ADC2_D] = sram_adc_read[7] + (sram_adc_read[8] << 8);
};

/*
 * DMA write/read event call-backs
 */
void SPI2DmaChannelHandler_State(DMA_TRANSFER_EVENT event, uintptr_t contextHandle)
{
	if (event == DMA_TRANSFER_EVENT_COMPLETE) {
	}
}

void SPI2DmaChannelHandler_State_Read(DMA_TRANSFER_EVENT event, uintptr_t contextHandle)
{
	if (event == DMA_TRANSFER_EVENT_COMPLETE) {
	}
}

/*
 * Timer trigger for ADC conversion and iss66 data writes
 */
void SCCP2_Callback_InterruptHandler(uint32_t status, uintptr_t context)
{
	ADC_DMA_write();
}

void ADC_DMA_init(void)
{
	// Select conversion mode on channel 6 to AN6
	AD1CH6CONbits.MODE = 3; // 0 = single, 3 = oversample = 2
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
	AD1CH6CONbits.SAMC = 0; // 12.5ns
	AD2CH4CONbits.SAMC = 0;
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

	switch (iss_chip) {
	case ISS_ISS_32Mb:
		iss_page_num = MAX_ISS66_PAGES_32MBIT;
		break;
	case ISS_ISS_16Mb:
		iss_page_num = MAX_ISS66_PAGES_16MBIT;
		break;
	default:
		iss_page_num = MAX_ISS66_PAGES_8MBIT;
		break;
	}

	/*
	 * setup the DMA and timer background tasks
	 */
	DMA_ChannelCallbackRegister(DMA_CHANNEL_5, SPI2DmaChannelHandler_State, 0);
	DMA_ChannelCallbackRegister(DMA_CHANNEL_4, SPI2DmaChannelHandler_State_Read, 0);
	SCCP2_TimerCallbackRegister(SCCP2_Callback_InterruptHandler, (uintptr_t) NULL);
	SCCP2_Timer32bitPeriodSet(retrigger_time); //  close to 2us between sample
}

/*
 * get IS66/67 SerialRAM chip codes
 */
enum iss_chip_type ISS_read_id(void)
{
	StartTimer(TMR_TEST, 2);
	SRAM_CS_Clear();
	SPI2_WriteRead((void *) iss_read_id, sizeof(iss_read_id), iss_read_id_buffer, sizeof(iss_read_id));
	while (!TimerDone(TMR_TEST)) {
	};
	SRAM_CS_Set();
	if ((iss_read_id_buffer[4] == 0x9D) && (iss_read_id_buffer[5] == 0x5D)) {
		switch (iss_read_id_buffer[6]&0xF0) {
		case 0x99:
			iss_chip = ISS_ISS_8Mb;
			break;
		case 0x20:
			iss_chip = ISS_ISS_16Mb;
			break;
		case 0x40:
			iss_chip = ISS_ISS_32Mb;
			break;
		default:
			iss_chip = ISS_ISS_BAD;
			break;
		}
	}
	return iss_chip;
}