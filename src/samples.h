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

#define ADC1_SCALE	0.000402000f
#define ADC2_SCALE	0.000402000f

	extern bool SW1_SET, SW2_SET;
	extern double adc1_scaled, adc2_scaled;

#ifdef	__cplusplus
}
#endif

#endif	/* SAMPLES_H */

