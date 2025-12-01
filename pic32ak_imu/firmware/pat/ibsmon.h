#ifndef PAT_H_INCLUDED
#define PAT_H_INCLUDED
//	hardware defines

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include "ihc_vector.h"
#include "crc.h"

typedef struct V_data { // ISR used, mainly for non-atomic mod problems
	uint32_t clock_500hz;
	uint32_t clock_10hz;
	uint32_t clock_2hz;
	uint8_t clock_blinks;
	uint8_t num_blinks;
	uint8_t blink_lock : 1;
	uint8_t config : 1;
	uint8_t stable : 1;
	uint8_t boot_code : 1;
	uint8_t power_on : 1;
	uint8_t send_count, recv_count, pwm_volts;
	uint16_t error;
} V_data;

typedef struct OUTBITS2 {
	uint8_t b0 : 1;
	uint8_t b1 : 1;
	uint8_t b2 : 1;
	uint8_t b3 : 1;
	uint8_t b4 : 1;
	uint8_t b5 : 1;
	uint8_t b6 : 1;
	uint8_t b7 : 1;
} OUTBITS_TYPE2;

union Obits2 {
	uint8_t out_byte;
	OUTBITS_TYPE2 out_bits;
};

typedef enum comm_type {
	CLEAR,
	INIT,
	SEND,
	RECV,
} comm_type;

typedef enum cmd_type {
	G_MODE = 0,
	G_ERROR,
	G_AUX,
	G_SET,
	G_LAST,
} cmd_type;

union PWMDC {
	uint16_t lpwm;
	uint8_t bpwm[2];
};

union MREG {
	int16_t value;
	char bytes[2];
};

#define SWVER	0x0030;

#define	ON	1
#define	OFF	0
#define	LEDON	0   // logic low lights led
#define	LEDOFF	1
#define BOFF	0
#define BON	255

#define	TIMEROFFSET	34268u			// timer0 16bit counter value for 1 second to overflow
#define	TIMERFAST	26600u			// fast flash 2hz
#define	SAMPLEFREQ	0xf660u			// timer1 500hz
#define	PWMFREQ		65			// timer2 pwm
#define PWMVOLTS	127

#define MAX_GLITCH      3
#define MAX_PARAMS      5
#define MAX_BLINKS	10
#define ERROR_BLINKS	MAX_BLINKS
#define BLINK_SPACE	8

#define IBSPORTA	TRISA
#define IBSPORTB	TRISB
#define IBSPORT_IOA	0b01001100		//
#define IBSPORT_IOB	0b00010010		// RS-232 receive on B4

#define MADDR		0x04 // modbus i400hz client address
/*******************************ModBus Functions*******************************/
#define READ_COILS                  1
#define READ_DISCRETE_INPUTS        2
#define READ_HOLDING_REGISTERS      3
#define READ_INPUT_REGISTERS        4
#define WRITE_SINGLE_COIL           5
#define WRITE_SINGLE_REGISTER       6
#define WRITE_MULTIPLE_COILS        15
#define WRITE_MULTIPLE_REGISTERS    16

#define DE		LATAbits.LATA0
#define RE_		LATAbits.LATA1
#define I400_ERROR	LATAbits.LATA2
#define SIG4		LATAbits.LATA3
#define SIG5		LATAbits.LATA6
#define LED1		LATBbits.LATB0
#define BOOT_FLAG  	LATBbits.LATB2 // debug
#define ANA_SIG		LATBbits.LATB3

#define LINK_COUNT      10
#define MAX_C_ERROR     3

//#define LOCAL_ECHO	1
#define FASTQ			// MODBUS query speed

#define TDELAY		3	// half-duplex delay
#define RDELAY		300	// receive timeout
#define CDELAY		50	// 10Hz
#define QDELAY		1	// query delay
#define TODELAY		4	// misc delay

#define CC_DEACT	61	// 1.00 normal 61
#define CC_ACT		92	// 1.50
#define CC_MPPT		122	// 2.00
#define CC_EQUAL	150	// 2.50
#define CC_BOOST	177	// 3.00
#define CC_FLOAT	205	// 3.50
#define CC_LIMIT	230	// 4.00
#define CC_OFFLINE	255	// 4.40

void SetDCPWM1(uint16_t);
#endif 