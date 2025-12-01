/* 
 * File:   vcan.h
 * Author: root
 *
 * Created on July 4, 2020, 9:42 AM
 */

#ifndef VCAN_H
#define	VCAN_H

#ifdef	__cplusplus
extern "C" {
#endif
	/*
	 * VCAN project header file
	 */
#include <xc.h>
#include <math.h>
#include <stdio.h>
#include <stdbool.h>

	/*
	 * modbus client software params
	 */
#define MODBUS_PORT	UART6
#define MODBUS_VER	0x30	// software version
#define MB_ADDR		4	// slave address

	/*
	 * read registers
	 * 0	h-bridge 1 current mA
	 * 1	h-bridge 2 current mA
	 * 2	h-bridge 3 current mA
	 * 3	Inverter AC output voltage
	 * 4	Fault/status bits and slave SW version
	 * 5	Voltage/PWM Inverter current value
	 * 
	 * write registers
	 * 10	power commands and master SW version
	 * 11	Adjust Voltage/PWM value
	 */

	/* 400Hz generator */
#define G400HZ
	//#define G400HZ_NODIS	
	/*
	 * 3-phase signal table size and offsets for each phase
	 */
#define sine_res	360
#define sinea		0
#define	sineb		120
#define sinec		240

#define FLT15_IN4	3
#define FAULT_DELAY	2

#define SYS_FREQ	120000000 // Running at 120MHz
#define SAMPLERATE	36000
#define SR120		12000
#define SR240		24000
#define PHASE_INC	(256 * 65536) / SAMPLERATE

#define MOTOR_SPEED	1	// sinewave update divider
#define HVDC_M			// 24 + volts for motor drive

#define ENCODER_PULSES_PER_REV	4000 // TEKNIC motor encoder, HURST BLDC motor encoder

#if ENCODER_PULSES_PER_REV < 9000
#ifdef HVDC_M
#define MBLOCK			1600
#define MIDLE			1500  // motor idle current
#define MPCURRENT		3000  // setpoint for motor current
#define motor_error_stop	ENCODER_PULSES_PER_REV/2000
#define motor_volts		12000 // limits amount of current at max torque, TI motor and AC servo motor
#define inverter_volts		6000  // max inverter voltage setting
#else
#define MBLOCK			2200
#define MIDLE			2400  // motor idle current
#define MPCURRENT		1200  // setpoint for motor current
#define motor_error_stop	ENCODER_PULSES_PER_REV/2000
#define motor_volts		2800 // limits amount of current at max torque, TI motor and AC servo motor
#endif
#else
#define MBLOCK			2200
#define MIDLE			2400  // motor idle current
#define MPCURRENT		1200  // setpoint for motor current
#define motor_error_stop	30
#define motor_volts		5000 // limits amount of current at max torque, MCHP motor with m35
#endif

#define NUM_POLES		8
#define NUM_POLE_PAIRS		NUM_POLES/2

	//	#define	SLIP_DRIVE // motor constant slew at calculated speed
#define MOTOR_SLIP	-670

#define PWM_FREQUENCY		MOTOR_SPEED
#define RATED_SPEED_RPM		10
#define SLOW_LOOP_TIME_SEC	1	

#define PI		M_PI
#define PI2		M_PI*2.0

#define SQRT3		((float)1.732)
#define SQRT3_BY2	(float)(0.866025403788)

#define ONE_BY_SQRT3	(float)(0.5773502691)
#define TWO_BY_SQRT3	(float)(1.1547005384)

#define QEI_VELOCITY_COUNT_PRESCALER             (float)100.0f
#define ENCODER_PULSES_PER_EREV                  ((uint32_t)((ENCODER_PULSES_PER_REV)/NUM_POLE_PAIRS))
#define QEI_COUNT_TO_ELECTRICAL_ANGLE            (float)(2*M_PI/ENCODER_PULSES_PER_EREV)
#define QEI_VELOCITY_SAMPLE_FREQUENCY            (float)((float)PWM_FREQUENCY / (float)QEI_VELOCITY_COUNT_PRESCALER)
#define QEI_VELOCITY_COUNT_TO_RAD_PER_SEC        (float)(((float)QEI_VELOCITY_SAMPLE_FREQUENCY * 2.0f * M_PI )/((float)ENCODER_PULSES_PER_EREV ))
#define QEI_PER_MREV				 (double) ((double) ENCODER_PULSES_PER_REV) / (double)3600.0

	/*____________________________ Rated speed of the motor in RPM___________________________________________ */
#define RATED_SPEED_RAD_PER_SEC_ELEC                      (float)(RATED_SPEED_RPM *(2*(float)M_PI/60) * NUM_POLE_PAIRS)
#define CLOSE_LOOP_RAMP_RATE                              (600) /* RPM per sec */
#define RAMP_RAD_PER_SEC_ELEC                             (float)(CLOSE_LOOP_RAMP_RATE * NUM_POLE_PAIRS * PI/30.0)
#define SPEED_RAMP_INC_SLOW_LOOP                          (float)(RAMP_RAD_PER_SEC_ELEC*SLOW_LOOP_TIME_SEC)

#define SINGLE_ELEC_ROT_RADS_PER_SEC                      ((float)((float)(2.0) * (float)M_PI))

#define HB_OHMS		100
#define ADC_REF		2.5
#define ADC_STEPS	4096.0/ADC_REF // 12-bit
#define ONE_VOLT	1000.0
#define MV_STEP		(ONE_VOLT/ADC_STEPS)
#define TEMP_OFFSET_ADC_STEPS	1181.96
#define TEMP_MV_C		1.56

#define HB_SCALE	42.0
#define MOTOR_CURRENT_SCALE	1.41 // square root of 2

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <proc/p32mk1024mcm100.h>
#include "config/default/definitions.h"                 // SYS function prototypes
#include "tests.h"
#include "m35qei.h"
#include "config/default/peripheral/rtcc/plib_rtcc.h"
#include "../lcd_drv/lcd_drv.h"

	typedef enum {
		V_init,
		V_home,
		V_run,
		V_abort,
	} V_STATE;

	typedef enum {
		M_SLEW,
		M_SLOW,
		M_ZERO,
	} M_SPEED;

	struct V_type {
		uint32_t StartTime, TimeUsed;
		volatile uint32_t pacing, pwm_update, pwm_stop, fault_count, fault_ticks, fault_source, modbus_rx, modbus_tx;
		V_STATE vcan_state;
		M_SPEED m_speed;
		int32_t motor_speed;
		volatile bool fault_active, dmt_sosc_flag;
		volatile UART_ERROR mb_error;
	};

#define KNOB1_INC	POS3CNT
#define MOTOR1_INC	POS2CNT

#define MOTOR_UPDATES	1	// main loop timer in ms
#define DISPLAY_UPDATE	100
#define ADC_UPDATE	25
#define BLINK_UPDATE	1000
#define DMT_UPDATE	1100	// DMT regular clearing timer in ms
#define DMT_PWM_TIME	1800	// core timer cycles until DMT system shutdown

#ifdef	__cplusplus
}
#endif

#endif	/* VCAN_H */
