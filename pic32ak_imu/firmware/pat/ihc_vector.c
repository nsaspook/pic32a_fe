#include "ihc_vector.h"

static void led_blink(void);

void __interrupt() tm_handler(void) // timer/serial functions are handled here
{
	static uint8_t c_error = 0;
	uint16_t tmp;

	if (PIR1bits.RCIF) { // is data from RS485 port
		cc_stream_file = RCREG;
		/*
		 * error check the receiver
		 */
		if (RCSTAbits.OERR || RCSTAbits.FERR) {
			cc_stream_file = 0x00; // nulls for data on errors
			RCSTAbits.CREN = OFF; // clear overrun
			RCSTAbits.CREN = ON; // re-enable
			if (c_error++>MAX_C_ERROR) {
				c_error = 0;
				V.error++;
			}
		} else {
			/*
			 * process received controller data stream
			 */
			cc_buffer[V.recv_count] = cc_stream_file;
			if (++V.recv_count >= MAX_DATA) {
				V.recv_count = 0; // reset buffer position
			}
		}
	}

	if (PIR1bits.TMR1IF) { //      Timer1 int handler
		PIR1bits.TMR1IF = OFF; //      clear int flag
		tmp = SAMPLEFREQ >> (uint8_t) 8;
		TMR1H = (uint8_t) tmp;
		tmp = SAMPLEFREQ & 0xFF;
		TMR1L = (uint8_t) tmp;
		V.clock_500hz++;
		V.clock_10hz++;
	}

	if (INTCONbits.TMR0IF) { //      check timer0 irq time timer
		INTCONbits.TMR0IF = OFF; //      clear interrupt flag
		tmp = TIMERFAST >> (uint8_t) 8;
		TMR0H = (uint8_t) tmp;
		tmp = TIMERFAST & 0xFF;
		TMR0L = (uint8_t) tmp;
		V.clock_2hz++;
		V.clock_blinks++;
		led_blink();
	}

	if (PIR1bits.TMR2IF) { //      check timer2 irq time timer
		PIR1bits.TMR2IF = OFF; //      clear interrupt flag
	}

	if (PIR1bits.CCP1IF) { //      check  ccp1 irq
		PIR1bits.CCP1IF = OFF; //      clear interrupt flag
	}

}

void clear_2hz(void)
{
	INTCONbits.GIEH = 0;
	V.clock_2hz = 0;
	INTCONbits.GIEH = 1;
}

void clear_10hz(void)
{
	INTCONbits.GIEH = 0;
	V.clock_10hz = 0;
	INTCONbits.GIEH = 1;
}

void clear_500hz(void)
{
	INTCONbits.GIEH = 0;
	V.clock_500hz = 0;
	INTCONbits.GIEH = 1;
}

uint32_t get_2hz(uint8_t mode)
{
	static uint32_t tmp = 0;

	if (mode) {
		return tmp;
	}

	INTCONbits.GIEH = 0;
	tmp = V.clock_2hz;
	INTCONbits.GIEH = 1;
	return tmp;
}

uint32_t get_10hz(uint8_t mode)
{
	static uint32_t tmp = 0;

	if (mode) {
		return tmp;
	}

	INTCONbits.GIEH = 0;
	tmp = V.clock_10hz;
	INTCONbits.GIEH = 1;
	return tmp;
}

uint32_t get_500hz(uint8_t mode)
{
	static uint32_t tmp = 0;

	if (mode) {
		return tmp;
	}

	INTCONbits.GIEH = 0;
	tmp = V.clock_500hz;
	INTCONbits.GIEH = 1;
	return tmp;
}

/*
 * link condition status server via blinking led
 * runs in timer 0 ISR @ 2Hz
 */
static void led_blink(void)
{
	// range checks
	if (V.num_blinks == 255) {
		LED1 = ON;
		V.clock_blinks = 0;
		V.blink_lock = false;
		return;
	}
	if (!V.num_blinks || V.num_blinks > MAX_BLINKS) {
		LED1 = OFF;
		V.clock_blinks = 0;
		V.blink_lock = false;
		return;
	}

	// time spacing and blink counter
	if (V.clock_blinks > BLINK_SPACE) {
		if ((BLINK_SPACE + (V.num_blinks << 1)) <= V.clock_blinks) {
			V.clock_blinks = 0;
			LED1 = OFF;
			V.blink_lock = false;
		} else {
			LED1 = ~LED1;
		}
	}
}

/*
 * set the number of blinks variable from mainline code
 */
bool set_led_blink(uint8_t blinks)
{
	if (V.blink_lock) {
		return false;
	}

	if (blinks > MAX_BLINKS && (blinks != 255)) {
		blinks = 0;
	}

	INTCONbits.GIEH = 0;
	V.blink_lock = true;
	V.num_blinks = blinks;
	INTCONbits.GIEH = 1;
	return true;
}
