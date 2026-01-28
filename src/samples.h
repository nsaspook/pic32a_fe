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
#include <xc.h>
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include "definitions.h"                // SYS function prototypes

#define FE_DRIVER "V1.06"
#define FE_ALIAS "PIC32AK FE"

	//#define ISS_DMA_READ

#define SCA3300
#define IMU_ID		3

#define IMU_BUF		256
#define FFT_BUF		64
#define SAMPLE_BUF	32
#define SAMPLE_TIMEOUT	2

#define NUM_ADC	2
#define ADC1_D	0
#define ADC2_D	1
#define ADC_SAMC	1

#define ADC1_SCALE	0.000418000f
#define ADC2_SCALE	0.000412000f

#define DAC1_CAL	1275

#define DIS_TICKS	100
#define IMU_TICKS	1
#define GFX_TICKS	30000

	/*
	 * isolated DIO pins
	 */
#define ISOO3_PORT_G		ISO3_O_Get()
#define ISOO4_PORT_G		ISO4_O_Get()

#define ISOI1_LAT_S		ISO1_S_Set()
#define ISOI1_LAT_C		ISO1_S_Clear()
#define ISOI1_LAT_L		ISO1_S_Get()

#define ISOI2_LAT_S		ISO2_S_Set()
#define ISOI2_LAT_C		ISO2_S_Clear()
#define ISOI2_LAT_L		ISO2_S_Get()

#define RETRIGGER_TIME	150

	static const uint32_t MAX_ISS66_SAMPLES = 256; // sram ADC samples to write, X4 bytes
	static const uint32_t MAX_ISS66_PAGES_8MBIT = 512; // sram pages to write
	static const uint32_t MAX_ISS66_PAGES_16MBIT = 512;
	static const uint32_t MAX_ISS66_PAGES_32MBIT = 512;
	static const uint32_t ISS66_PAGE_SIZE = 1024;
	static const size_t SRAM_READ_SAMPLES = 25;
	static const uint32_t ISS_FAST_CMD_SIZE = 5;
	static const uint32_t ISS_WRITE_CMD_SIZE = 4;
	static const uint32_t ADC_SAMPLES_SIZE = 4;
	static const uint32_t ADC_SAMPLES_START = 4;
	/*
	 * unconfigured pins RA6, RC6, RC7, RD2, RB1
	 * RA11 = TP1
	 * RB1 BISS1 MA, OUTPUT
	 * RD2 BISS1 SL, INPUT
	 * RA6 BISS1 MO, OUTPUT
	 */

	extern bool SW1_SET, SW2_SET;
	extern double adc1_scaled, adc2_scaled;

	enum iss_sample_type {
		ISS_INIT = 0, // ISS FSM states
		ISS_PAGE,
		ISS_STORE,
		ISS_NULL,
		ISS_LAST,
	};

	enum iss_chip_type {
		ISS_ISS_UNK = 0, // ISS chip models, UNK means chip read error
		ISS_ISS_8Mb,
		ISS_ISS_16Mb,
		ISS_ISS_32Mb,
		ISS_ISS_BAD, // unknown id
		ISS_ISS_LAST,
	};

	void fe_version(void);
	/*
	 * PIC32AK FE board firmware
	 * V1.00	Alpha testing versions
	 * V1.01	add iso DIO, set SPI2 speeds to max
	 * V1.02	code cleanups
	 * V1.03	SRAM chip ID setups
	 * V1.04	DISABLE JTAG so pins D[1--3], RB1 will work
	 * V1.05	SRAM chip error detection fixes
	 */

#ifdef	__cplusplus
}
#endif

#endif	/* SAMPLES_H */

