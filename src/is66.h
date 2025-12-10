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

	extern uint8_t iss_read_id_buffer[];

	extern volatile uint32_t total_sample_triggers;
	extern uint32_t total_iss_triggers;
	extern volatile uint16_t adc_result[];
	extern uint16_t adc_iss_result[];

	enum iss_chip_type ISS_read_id(void);
	void ADC_DMA_write(void);
	void ADC_DMA_read(void);
	void ADC_DMA_init(void);

#ifdef	__cplusplus
}
#endif

#endif	/* IS66_H */

