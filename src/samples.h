/*
 * File:   samples.h
 * Author: root
 *
 * Created on November 10, 2025, 12:16 PM
 */

#ifndef SAMPLES_H
#define	SAMPLES_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include "definitions.h"                // SYS function prototypes

#define FE_DRIVER "V1.00"
#define FE_ALIAS "PIC32AK FE"

#define SCA3300
#define IMU_ID	3

#define IMU_BUF	256
#define FFT_BUF	64

#define NUM_ADC	2
#define ADC1_D	0
#define ADC2_D	1

#define ADC1_SCALE	0.000403900f
#define ADC2_SCALE	0.000402000f

#define DAC1_CAL	1256

#define DIS_TICKS	100
#define IMU_TICKS	1
#define GFX_TICKS	30000

	extern bool SW1_SET, SW2_SET;
	extern double adc1_scaled, adc2_scaled;

	void fe_version(void);
	/*
	 * PIC32AK FE board firmware
	 * V1.00	Alpha testing versions
	 */

#ifdef	__cplusplus
}
#endif

#endif	/* SAMPLES_H */

