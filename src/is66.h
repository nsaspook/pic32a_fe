/*
 * File:   is66.h
 * Author: root
 *
 * Created on November 6, 2025, 6:21 PM
 */

#ifndef IS66_H
#define	IS66_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
#include "samples.h"

	const uint8_t iss_read_id[7] = {0x9F};
	uint8_t iss_read_id_buffer[7];

	extern volatile uint8_t iss_adc_write[8];
	extern volatile uint8_t sram_adc_write[8], sram_adc_read[8];
	extern volatile uint32_t total_sample_triggers;
	extern volatile uint16_t sram_addr, *sram_addr_ptr, adc_result[NUM_ADC];

	void ADC_DMA_write(void);
	void ADC_DMA_read(void);
	void ADC_DMA_init(void);

#ifdef	__cplusplus
}
#endif

#endif	/* IS66_H */

