/* 
 * File:   adc_scan.h
 * Author: root
 *
 * Created on July 5, 2020, 9:05 AM
 */

#ifndef ADC_SCAN_H
#define	ADC_SCAN_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "vcan.h"
#include "filters.h"

#define ADC_L	1930
#define ADC_H	1990

	typedef enum {
		FBA1 = 0,
		FBB1,
		FBA2,
		FBB2,
		POT1,
		POT2,
		ANA1,
		ANA3,
		IVREF,
		VBAT2,
		TSENSOR,
		NUM_AN, // one extra to define number of ADC SOURCES
	} AN_NAMES;

	extern volatile int32_t u1ai, u1bi, u2ai, u2bi, u_total, current_error, an_data[NUM_AN];

	void end_of_adc_scan(void);
	void init_end_of_adc_scan(void);
	int32_t hb_current(const int32_t, const bool);
	void start_adc_scan(void);
	bool check_adc_ivref(void);

#ifdef	__cplusplus
}
#endif

#endif	/* ADC_SCAN_H */

