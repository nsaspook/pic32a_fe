/* 
 * File:   ihc_vector.h
 * Author: root
 *
 * Created on October 22, 2017, 4:25 PM
 */

#ifndef IHC_VECTOR_H
#define	IHC_VECTOR_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <xc.h>
#include <stdlib.h>
#include "ibsmon.h"

#define MAX_DATA        64

	extern volatile struct V_data V;
	extern volatile uint8_t cc_stream_file, cc_stream_file_prev, cc_buffer[MAX_DATA];
	extern volatile uint16_t timer0_off, link_count;

	/*
	 * event timer delays
	 */
	void clear_2hz(void);
	void clear_10hz(void);
	void clear_500hz(void);
	uint32_t get_2hz(uint8_t);
	uint32_t get_10hz(uint8_t);
	uint32_t get_500hz(uint8_t);

	bool set_led_blink(uint8_t);
#ifdef	__cplusplus
}
#endif

#endif	/* IHC_VECTOR_H */

