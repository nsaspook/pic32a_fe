// PIC18F1320 Configuration Bit Settings

// 'C' source line config statements
#include <xc.h>

// CONFIG1H
#pragma config OSC = HSPLL      // Oscillator Selection bits (HS oscillator, PLL enabled (clock frequency = 4 x FOSC1))
#pragma config FSCM = ON        // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor enabled)
#pragma config IESO = ON        // Internal External Switchover bit (Internal External Switchover mode enabled)

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = ON         // Brown-out Reset Enable bit (Brown-out Reset enabled)
// BORV = No Setting

// CONFIG2H
#pragma config WDT = OFF        // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDTPS = 32768    // Watchdog Timer Postscale Select bits (1:32768)

// CONFIG3H
#pragma config MCLRE = ON       // MCLR Pin Enable bit (MCLR pin enabled, RA5 input pin disabled)

// CONFIG4L
#pragma config STVR = ON        // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = OFF         // Low-Voltage ICSP Enable bit (Low-Voltage ICSP DISenabled)

// CONFIG5L
#pragma config CP0 = OFF         // Code Protection bit (Block 0 (00200-000FFFh) code-protected)
#pragma config CP1 = OFF         // Code Protection bit (Block 1 (001000-001FFFh) code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot Block (000000-0001FFh) not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (00200-000FFFh) not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (001000-001FFFh) not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0001FFh) not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (00200-000FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (001000-001FFFh) not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0001FFh) not protected from table reads executed in other blocks)


/*
 * Driver software 400Hz 3-phase inverter
 * Runs on a PIC18F1320 
 *	nsaspook@nsaspook.com
 * cpu clock 10mhz external
 * Version
 * 3.0 i400hz 3-phase inverter modbus commands
 */


#include "ibsmon.h"

int8_t controller_work(void);
void init_i400mon(void);
uint8_t init_stream_params(void);

uint16_t req_length = 0;
/*
 * send and receive MODBUS templates
 */
const uint8_t modbus_cc_mode[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x06},
modbus_cc_error[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x0A, 0x00, 0x02},
i400_mode[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x00, 0x85, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x85},
i400_error[] = {MADDR, READ_HOLDING_REGISTERS, 0x04, 0x00, 0x00, 0x00, 0x00, 0x39, 0x85},
i400_clear[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x01, 0x5d, 0xc0},
i400_freset[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x01, 0x60, 0x00};
/*
 * send variable register commands
 */
uint8_t modbus_cc_clear[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x0A, 0x00, 0x01},
modbus_cc_freset[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x0B, 0x00, 0x02};

volatile struct V_data V = {
	.blink_lock = false,
	.power_on = true,
};
volatile uint8_t cc_stream_file, cc_buffer[MAX_DATA]; // half-duplex so we can share the cc_buffer for TX and RX
uint32_t crc_error;
union MREG rvalue;
/*
 * variable register data
 */
int16_t i400_pwm = 369; // inverter voltage control
int16_t i400_power = 0x0130; // power commands upper byte and modbus master software version lower byte
/*
 * program version data
 */
const char *build_date = __DATE__, *build_time = __TIME__, build_version[5] = "3.0a";

void SetDCPWM1(uint16_t dutycycle)
{
	union PWMDC DCycle;

	// Save the dutycycle value in the union
	DCycle.lpwm = dutycycle << 6;

	// Write the high byte into CCPR1L
	CCPR1L = DCycle.bpwm[1];

	// Write the low byte into CCP1CON5:4
	CCP1CON = (CCP1CON & 0xCF) | ((DCycle.bpwm[0] >> 2) & 0x30);
}

/*
 * simple modbus master state machine
 */
int8_t controller_work(void)
{
	static uint8_t mcmd = G_MODE;
	static comm_type cstate = CLEAR;
	static cmd_type modbus_command = G_MODE;

	switch (cstate) {
	case CLEAR:
		clear_2hz();
		clear_10hz();
		cstate = INIT;
		modbus_command = mcmd++; // sequence modbus commands to client
		if (mcmd > G_LAST) {
			mcmd = G_MODE;
		}
		/*
		 * command specific tx buffer setup
		 */
		switch (modbus_command) {
		case G_SET: // write code request
			if (SIG4) {
				rvalue.value = i400_pwm;
			} else {
				rvalue.value = 0;
			}
			modbus_cc_freset[4] = rvalue.bytes[1];
			modbus_cc_freset[5] = rvalue.bytes[0];
			req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_cc_freset, sizeof(modbus_cc_freset));
			break;
		case G_AUX: // write code request
			i400_power = V.power_on << 8; // inverter power command flag
			i400_power += (((uint16_t) (V.error & 0x00ff)) << 9) + SWVER; // receive errors  and software version
			rvalue.value = i400_power;
			modbus_cc_clear[4] = rvalue.bytes[1];
			modbus_cc_clear[5] = rvalue.bytes[0];
			req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_cc_clear, sizeof(modbus_cc_clear));
			break;
		case G_ERROR: // read code request
			req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_cc_error, sizeof(modbus_cc_error));
			break;
		case G_MODE: // operating mode request
		default:
			req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_cc_mode, sizeof(modbus_cc_mode));
			break;
		}
		break;
	case INIT:
#ifdef	FASTQ
		if (get_10hz(false) >= CDELAY) {
			get_2hz(false);
#else
		if (get_2hz(FALSE) >= QDELAY) {
			get_10hz(false);
#endif
#ifdef LOCAL_ECHO
			RE_ = 0; // keep receiver active
#else
			RE_ = 1; // shutdown receiver
#endif
			DE = 1;
			V.send_count = 0;
			V.recv_count = 0;
			cstate = SEND;
			clear_500hz();
		}
		break;
	case SEND:
		if (get_500hz(false) > TDELAY) {
			do {
				while (!TXSTAbits.TRMT) {
				}; // wait for each byte
				TXREG = cc_buffer[V.send_count];
			} while (++V.send_count < req_length);
			while (!TXSTAbits.TRMT) {
			}; // wait for the last byte
			cstate = RECV;
			clear_500hz();
		}
		break;
	case RECV:
		if (get_500hz(false) > TDELAY) {
			uint16_t c_crc, c_crc_rec;

			DE = 0;
			RE_ = 0;

			/*
			 * check received response data for size and format for each command sent
			 */
			switch (modbus_command) {
			case G_SET: // check for controller error codes
				req_length = sizeof(i400_freset);
				if ((V.recv_count >= req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == WRITE_SINGLE_REGISTER)) {
					c_crc = crc16(cc_buffer, req_length - 2);
					c_crc_rec = (uint16_t) ((uint16_t) cc_buffer[req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[req_length - 1] & 0x00ff);
					if (c_crc == c_crc_rec) {

					} else {
						crc_error++;
						V.error++;
						set_led_blink(BOFF);
					}
					cstate = CLEAR;
				} else {
					/*
					 * receiver timeout, restart
					 */
					if (get_500hz(false) > RDELAY) {
						cstate = CLEAR;
						I400_ERROR = OFF;
						mcmd = G_MODE;
						V.error++;
					}
				}
				break;
			case G_AUX: // check for controller error codes
				req_length = sizeof(i400_clear);
				if ((V.recv_count >= req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == WRITE_SINGLE_REGISTER)) {
					c_crc = crc16(cc_buffer, req_length - 2);
					c_crc_rec = (uint16_t) ((uint16_t) cc_buffer[req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[req_length - 1] & 0x00ff);
					if (c_crc == c_crc_rec) {

					} else {
						crc_error++;
						V.error++;
						set_led_blink(BOFF);
					}
					cstate = CLEAR;
				} else {
					if (get_500hz(false) > RDELAY) {
						cstate = CLEAR;
						I400_ERROR = OFF;
						mcmd = G_MODE;
						V.error++;
					}
				}
				break;
			case G_ERROR: // check for controller error codes
				req_length = sizeof(i400_error);
				if ((V.recv_count >= req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == READ_HOLDING_REGISTERS)) {
					uint16_t temp;
					c_crc = crc16(cc_buffer, req_length - 2);
					c_crc_rec = (uint16_t) ((uint16_t) cc_buffer[req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[req_length - 1] & 0x00ff);
					if (c_crc == c_crc_rec) {
						if ((temp = ((uint16_t) cc_buffer[3] << 8) +((uint16_t) cc_buffer[4]&0xff))) {
							NOP();
							I400_ERROR = ON;
							set_led_blink(ERROR_BLINKS);
						} else {
							I400_ERROR = OFF;
						}
					} else {
						crc_error++;
						V.error++;
						set_led_blink(BOFF);
					}
					cstate = CLEAR;
				} else {
					if (get_500hz(false) > RDELAY) {
						cstate = CLEAR;
						I400_ERROR = OFF;
						mcmd = G_MODE;
						V.error++;
					}
				}
				break;
			case G_MODE: // check for current operating mode
			default:
				req_length = sizeof(i400_mode);
				if ((V.recv_count >= req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == READ_HOLDING_REGISTERS)) {
					uint8_t temp;
					static uint8_t volts = CC_OFFLINE;

					c_crc = crc16(cc_buffer, req_length - 2);
					c_crc_rec = (uint16_t) ((uint16_t) cc_buffer[req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[req_length - 1] & 0x00ff);

					if (c_crc == c_crc_rec) {
						if ((temp = cc_buffer[4])) {
							set_led_blink(temp);
							switch (temp) {
							case 1:
								volts = CC_ACT;
								break;
							case 2:
								volts = CC_MPPT;
								break;
							case 3:
								volts = CC_EQUAL;
								break;
							case 4:
								volts = CC_BOOST;
								break;
							case 5:
								volts = CC_FLOAT;
								break;
							case 6:
								volts = CC_LIMIT;
								break;
							default:
								volts = CC_ACT;
								break;
							}
						} else {
							set_led_blink(BON);
							volts = CC_DEACT;
						}
					} else {
						crc_error++;
						V.error++;
						set_led_blink(BOFF);
					}
					V.pwm_volts = volts;
					SetDCPWM1(V.pwm_volts);
					cstate = CLEAR;
				} else {
					if (get_500hz(false) > RDELAY) {
						set_led_blink(BOFF);
						cstate = CLEAR;
						V.pwm_volts = CC_OFFLINE;
						SetDCPWM1(V.pwm_volts);
						mcmd = G_MODE;
						V.error++;
					}
				}
			}
		}
		break;
	default:
		break;
	}
	return 0;
}

void init_i400mon(void)
{
	uint16_t tmp;
	V.boot_code = false;
	BOOT_FLAG = false;
	if (RCON != 0b0011100) {
		V.boot_code = true;
	}

	if (STKPTRbits.STKFUL || STKPTRbits.STKUNF) {
		V.boot_code = true;
		STKPTRbits.STKFUL = 0;
		STKPTRbits.STKUNF = 0;
	}

	if (V.boot_code) {
		BOOT_FLAG = true;
	}

	ADCON1 = 0x7F; // all digital, no ADC
	/* interrupt priority ON */
	RCONbits.IPEN = 1;
	/* define I/O ports */
	IBSPORTA = IBSPORT_IOA;
	IBSPORTB = IBSPORT_IOB;
	INTCON2bits.RBPU = 0; // enable weak pull-ups, mainly for receive serial when RS485 Rx transceiver is off.

	LED1 = OFF;
	I400_ERROR = OFF;
	V.clock_blinks = 0;
	set_led_blink(BOFF);
	//OpenTimer0(TIMER_INT_ON & T0_16BIT & T0_SOURCE_INT & T0_PS_1_64);
	T0CON = 0b10000101;
	tmp = TIMERFAST >> (uint8_t) 8;
	TMR0H = (uint8_t) tmp;
	tmp = TIMERFAST & 0xFF;
	TMR0L = (uint8_t) tmp;
	//OpenTimer1(TIMER_INT_ON & T1_16BIT_RW & T1_SOURCE_INT & T1_PS_1_4 & T1_OSC1EN_OFF & T1_SYNC_EXT_OFF);
	T1CON = 0b10100101;
	tmp = SAMPLEFREQ >> (uint8_t) 8;
	TMR1H = (uint8_t) tmp;
	tmp = SAMPLEFREQ & 0xFF;
	TMR1L = (uint8_t) tmp;

	CCP1CON |= 0b00001100;
	T2CONbits.TMR2ON = 0;
	PR2 = PWMFREQ;
	T2CONbits.TMR2ON = 1;
	V.pwm_volts = CC_OFFLINE;
	SetDCPWM1(V.pwm_volts);

	/* MODBUS data line UART1 */
	TXSTA = 0;
	RCSTA = 0;
	PIE1bits.RCIE = 1;
	PIE1bits.TXIE = 0;
	TXSTAbits.SYNC = 0;
	RCSTAbits.CREN = 1;
	PIR1bits.TXIF = 0;
	PIR1bits.RCIF = 0;
	BAUDCTLbits.BRG16 = 1; // 40MHz osc HS/PLL 57.6k baud
	TXSTAbits.BRGH = 0;
	SPBRGH = 0;
	SPBRG = 42;
	TXSTAbits.TXEN = 1;
	RCSTAbits.SPEN = 1;

	INTCONbits.TMR0IE = 1; // enable int
	INTCON2bits.TMR0IP = 1; // make it high level
	PIE1bits.TMR1IE = 1; // enable int
	IPR1bits.TMR1IP = 1; // make it high level

	init_stream_params();

	/* Enable all high priority interrupts */
	INTCONbits.GIEH = 1;
}

uint8_t init_stream_params(void)
{
	V.config = false;
	return 0;
}

void main(void)
{
	init_i400mon();
	/* Loop forever */
	while (true) { // busy work
		controller_work();
	}
}
