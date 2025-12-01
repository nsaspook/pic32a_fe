/* 
 * File:   filters.h
 * Author: root
 *
 * Created on July 5, 2020, 2:27 PM
 */

/*
 * code from: https://hackaday.io/project/1045-pic32-performance-and-peripherials/details
 */

#ifndef FILTERS_H
#define	FILTERS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <math.h>

#define NUM_FILTERS	8

	void filters_init(void);
	int32_t lp_filter(int32_t, uint8_t);
	double lp_filter_f(double, uint8_t);
	int32_t lp_filter2(int32_t, uint8_t);
	void MCLIB_LinearRamp(double * const, const double, const double);
	void MCLIB_ImposeLimits(float * const, const float, const float);

#ifdef	__cplusplus
}
#endif

#endif	/* FILTERS_H */

