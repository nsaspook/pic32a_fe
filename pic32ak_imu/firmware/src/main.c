/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

/*
 * 26-bit Electrical angles and mechanical angles
 *
 * Velocity Calculation from each rising edge of one phase of the Quadrature Encoder
 * 3-phase sinusoidal commutation
 *
 * Sinusoidal Commutation of a Brushless Motor
To fully optimize the conversion of current into shaft torque, the amplifier needs to vary
the applied current I based on a precise measurement of ?. The torque equation for the
three phases becomes
TA = IA * Kt * sin ?
TB = IB * Kt * sin (?+120) (10)
TC = IC * Kt * sin (? + 240)
A feedback device such as a quadrature encoder can determine ? in terms of counts;
a common resolution is 360? (1 revolution) = 4000 counts. The amplifier varies the
current in each phase I based on the motor command signal M with respect to ?:
IA = M * sin ?
IB = M * sin (?+120) (11)
IC = M * sin (? + 240)
 * http://www.galilmc.com/download/application-note/note3414.pdf
 * https://www.motioncontroltips.com/what-is-sinusoidal-commutation-for-dc-motors/
 * https://www.switchcraft.org/learning/2017/3/15/space-vector-pwm-intro
 * Control of permanent magnet AC servo motors via fuzzy reasoning
 */

/*
 * PIC32MK hardware
 * timer 1	SOSC	1 second clock
 * timer 2	motor pwm waveform 1.0ms PRI 7, sub 2
 * timer 3	QEI slip speed updater 1 second
 * timer 6	software timer updates 0.5ms
 */

#include "m35qei.h" 
#include "vcan.h"
#include "dio.h"
#include "adc_scan.h"
#include "timers.h"
#include "pid.h"
#include "freqgen.h"
#include "../lcd_drv/lcd_drv.h"
#include "dio.h"
#include "scmd.h"
#include "peripheral/coretimer/plib_coretimer.h"
#include "gfx.h"
#include "faults.h"
#include "PetitModbus/PetitModbus.h"

const char *build_date = __DATE__, *build_time = __TIME__;
static char buffer[STR_BUF_SIZE];
extern t_cli_ctx cli_ctx; // command buffer 

volatile struct QEI_DATA m35_1 = {
	.duty = MPCURRENT, // default motor duty
	.current_offset = 0,
},
m35_2 = {
	.duty = 0, // default motor duty
	.gain = error_gain, // motor position encoder gain
	.sine_steps = sinea,
	.pole_pairs = NUM_POLE_PAIRS,
	.ppr = ENCODER_PULSES_PER_REV,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
	.set = false,
	.current_offset = 0,
},
m35_3 = {
	.duty = 0,
	.gain = pos_gain, // input position encoder gain
	.sine_steps = sineb,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
	.current_offset = 0,
},
m35_4 = {
	.duty = 0,
	.gain = herror_gain, // PWM sine-wave gain
	.sine_steps = sinec,
	.speed = MOTOR_SPEED,
	.current = 100,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
	.current_offset = 0,
},

*m35_ptr;

volatile struct SPid freq_pi = {
	.iMax = 2000.0,
	.iMin = 0.0,
	.pGain = .9, // 0.5
	.iGain = 0.05, // 0.125
};

volatile struct SPid current_pi = {
	.iMax = 300.0,
	.iMin = -300.0,
	.pGain = 0.1, // 0.2
	.iGain = 0.01, // 0.8
};

volatile struct SPid velocity_pi = {
	.iMax = 50.0,
	.iMin = -50.0,
	.pGain = 3.25, // 0.5
	.iGain = 0.95, // 0.5 slip_drive
};

volatile int32_t u1ai = 0, u1bi = 0, u2ai = 0, u2bi = 0, u_total = 0, current_error, an_data[NUM_AN];
volatile uint16_t tickCount[TMR_COUNT];

static time_t rawtime;
static volatile time_t t1_time;
static struct tm * timeinfo;

volatile struct V_type V = {
	.StartTime = 1,
	.TimeUsed = 1,
	.pacing = 1,
	.pwm_update = true,
	.pwm_stop = true,
	.vcan_state = V_init,
	.m_speed = M_SLEW,
	.motor_speed = MOTOR_SPEED,
	.fault_active = false,
	.fault_count = 0,
	.dmt_sosc_flag = false,
};
double mHz = 0.0, mHz_real = 0.0, sr_slip = 0.0, mHz_raw = 0.0, mHz_real_raw = 0.0;
double pi_current_error = 0.0, pi_velocity_error = 0.0, pi_freq_error = 0.0;

const uint8_t step_code[] = {// A,B,C bits in order
	0b101,
	0b100,
	0b110,
	0b010,
	0b011,
	0b001,
	0b101,
};
int32_t xa, ya, za;
extern CORETIMER_OBJECT coreTmr;
const uint32_t update_delay = 5;
volatile float q0 = 1.0, q1 = 1.0, q2 = 1.0, q3 = 1.0; // quaternion 

time_t time(time_t *);
void my_time(uint32_t, uintptr_t);
void move_pos_qei(uint32_t, uintptr_t);
//int32_t velo_loop(double, bool);
void wave_gen(uint32_t, uintptr_t);
void my_modbus_rx(UART_EVENT, uintptr_t);
void an1_callback(uint32_t, uintptr_t);
void an3_callback(uint32_t, uintptr_t);

void PWM_motor2(M_CTRL mmode)
{
	IOCON2bits.OVRDAT = 3;
	IOCON1bits.OVRDAT = 3;

	switch (mmode) {
	case M_PWM:
		IOCON2bits.OVRENH = 0;
		IOCON2bits.OVRENL = 0;
		IOCON1bits.OVRENH = 0;
		IOCON1bits.OVRENL = 0;
		IOCON3bits.OVRENH = 0;
		IOCON3bits.OVRENL = 0;
		IOCON4bits.OVRENH = 0;
		IOCON4bits.OVRENL = 0;
		break;
	case M_CW:
		IOCON2bits.OVRDAT = 1;
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		break;
	case M_CCW:
		IOCON2bits.OVRDAT = 2;
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		break;
	case M_CAL:
		IOCON2bits.OVRDAT = 0;
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		IOCON1bits.OVRDAT = 0;
		IOCON1bits.OVRENH = 1;
		IOCON1bits.OVRENL = 1;
		IOCON4bits.OVRDAT = 0; // connect to motor power
		IOCON4bits.OVRENH = 1;
		IOCON4bits.OVRENL = 1;
		IOCON3bits.OVRDAT = 2;
		IOCON3bits.OVRENH = 1;
		IOCON3bits.OVRENL = 1;

		break;
	case M_STOP:
	default:
		IOCON2bits.OVRDAT = 0;
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		IOCON1bits.OVRDAT = 0;
		IOCON1bits.OVRENH = 1;
		IOCON1bits.OVRENL = 1;
		IOCON4bits.OVRDAT = 0;
		IOCON4bits.OVRENH = 1;
		IOCON4bits.OVRENL = 1;
		IOCON3bits.OVRDAT = 0;
		IOCON3bits.OVRENH = 1;
		IOCON3bits.OVRENL = 1;
		break;
	}
}

time_t time(time_t * Time)
{
	return t1_time;
}

/*
 * PWM waveform generation interrupt routine, timer #2
 */
void wave_gen(uint32_t status, uintptr_t context)
{
	//	DEBUGB0_Set();
	if (V.pwm_stop && V.pwm_update) {
		return;
	}

	V.pwm_update = true;

	V.TimeUsed = (uint32_t) _CP0_GET_COUNT() - V.StartTime;
	_CP0_SET_COUNT(DMT_PWM_TIME); // Set Core Timer count
	V.StartTime = (uint32_t) _CP0_GET_COUNT();
	/*
	 * load sinewave constants from three-phase 360 values per cycle lookup tables
	 */
	phase_duty(&m35_2, m35_4.current + m35_2.current_offset, V.m_speed, 2);
	phase_duty(&m35_3, m35_4.current + m35_3.current_offset, V.m_speed, 2);
	phase_duty(&m35_4, m35_4.current + m35_4.current_offset, V.m_speed, 2);
	/*
	 * generate a current error drive signal
	 */
	m35_4.current = MPCURRENT + POS3CNT;
	//	m35_4.current = MPCURRENT;
	/*
	 * limit motor drive current
	 */
	if (m35_4.current > inverter_volts) {
		m35_4.current = inverter_volts;
		POS3CNT = inverter_volts - MPCURRENT;
	}
	if (m35_4.current < 0) {
		m35_4.current = 0;
		POS3CNT = (-MPCURRENT);
	}
	m35_4.current_prev = m35_4.current;

	/*
	 * set channel duty cycle for motor sinewave outputs at ISR time 1ms intervals
	 */
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
	V.pwm_update = false;
	//	DEBUGB0_Clear();
}

/*
 * PWM ADC 1 interrupt
 */
void an1_callback(uint32_t status, uintptr_t context)
{
	DEBUGB0_Set();
	an_data[ANA1] = ADCHS_ChannelResultGet(ADCHS_CH1); // JP5 pin 14, AN1, ANA1/RA1
}

/*
 * PWM ADC 3 interrupt
 */
void an3_callback(uint32_t status, uintptr_t context)
{
	DEBUGB0_Set();
	an_data[ANA1] = ADCHS_ChannelResultGet(ADCHS_CH1); // JP5 pin 14, AN1, ANA1/RA1
	an_data[ANA3] = ADCHS_ChannelResultGet(ADCHS_CH3); // QEI pin 4, AN3, ANA3/RA3
	DEBUGB0_Clear();
}

/*
 * SOSC driven timer #1
 * 1ms interrupts
 */
void my_time(uint32_t status, uintptr_t context)
{
	static bool once = true;

	t1_time++;
	V.dmt_sosc_flag = true;
#ifdef G400HZ
	PetitModBus_TimerValues(); // modbus time tick
	/*
	 * system fault flags checks
	 * shutdown inverter driver if detected
	 */
	if (check_fault()) {
		V.fault_ticks++;
		/*
		 * try to clean fault only one time
		 */
		if (once && (V.fault_ticks > FAULT_DELAY)) {
			U1_EN_Set();
			U2_EN_Set();
			clear_fault_flag();
			V.fault_ticks = 0;
			once = false;
		} else {
			if (!once) {
				U1_EN_Clear();
				U2_EN_Clear();
			}
		}
	};
#endif
}

/*
 * input position auto-positioning, timer #3
 */
void move_pos_qei(uint32_t status, uintptr_t context)
{

#ifdef SLIP_DRIVE
	POS3CNT = POS2CNT + MOTOR_SLIP; // movement offset
#endif
	return;
}

void fh_hw(void *a_data)
{
	t_cli_ctx *cmd = a_data;
	POS3CNT = 1000;
	UART3_Write((uint8_t*) cmd->cmd, strlen(cmd->cmd));
}

void fh_hi(void *a_data)
{
	POS3CNT = 3000;
	UART3_Write((uint8_t*) " hi      ", 8);
}

void fh_ho(void *a_data)
{
	POS3CNT = 0;
	UART3_Write((uint8_t*) " ho      ", 8);
}

void my_modbus_rx(UART_EVENT event, uintptr_t context)
{
	static uint8_t m_data = 0;

	BSP_LED3_Set();
	if (event == UART_EVENT_READ_ERROR) {
		V.mb_error = UART6_ErrorGet();
	} else {
		UART6_Read(&m_data, 1);
		ReceiveInterrupt(m_data);
	}
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	bool dmt = RCONbits.DMTO, wdt = RCONbits.WDTO; // set dead man restart status

	/* Initialize all modules */
	SYS_Initialize(NULL);

	if (dmt) {
		uint16_t tgl = 1;
		/*
		 * make sure inverter power to h-bridge is off
		 */
		U1_EN_Clear();
		U2_EN_Clear();
		while (true) {
			if (!tgl++) {
				BSP_LED1_Toggle();
				BSP_LED2_Toggle();
				BSP_LED3_Toggle();
			}
			DMT_Clear(); // clear the Dead Man Timer
		}
	}

	BSP_LED1_Set();
	BSP_LED2_Set();
	BSP_LED3_Clear();
	_CP0_SET_COUNT(DMT_PWM_TIME); // Set Core Timer count

	/*
	 * start the external switch handler
	 */
	init_dio();
	/*
	 * MODBUS RX callback with init
	 */
	DERE_Clear(); // enable modbus receiver USART6
	UART6_ReadThresholdSet(1); // callback every char
	UART6_ReadNotificationEnable(true, true);
	UART6_ReadCallbackRegister(my_modbus_rx, 0);
	InitPetitModbus(MB_ADDR);
	/*
	 * software timers @1ms using 500ns ticks
	 */
	/*
	 * make sure inverter power to h-bridge is off
	 */
	U1_EN_Clear();
	U2_EN_Clear();
	TMR6_CallbackRegister(timer_ms_tick, 0);
	TMR6_Start();
	TMR3_Stop();
	TMR3_CallbackRegister(move_pos_qei, 0);
	TMR1_CallbackRegister(my_time, 0);
	TMR1_Start();
	StartTimer(TMR_BLINK, 1000);

	QEI1_Start();
	QEI2_Start();
	QEI3_Start();
	m35_ptr = &m35_3;
	/*
	 * default duty cycle
	 */
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, duty_max); // neutral channel set to zero reference
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, duty_max);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, duty_max);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, duty_max);

	time(&rawtime);
	timeinfo = localtime(&rawtime);

	//Module CTMU for temp diode current
	PMD1bits.CTMUMD = 0; //Enable CTMU Module
	CTMUCONbits.TGEN = 0; // TGEN = 0 for enable current through diode
	CTMUCONbits.EDG1STAT = 1; // EDGESTAT1 = EDGESTAT2  for enable current trough diode
	CTMUCONbits.EDG2STAT = 1; // EDGESTAT1 = EDGESTAT2  for enable current trough diode
	CTMUCONbits.IRNG = 0b11; //100xBase current level
	CTMUCONbits.ON = 1; // CTMU is ON

	init_lcd_drv(D_INIT);

	if (OSCCONbits.CF) { // check for sysclock proper operation
		sprintf(buffer, "VCAN Clock Error       ");
		eaDogM_WriteStringAtPos(0, 0, buffer);
		sprintf(buffer, "Clock Status %04x      ", CLKSTAT);
		eaDogM_WriteStringAtPos(1, 0, buffer);
		sprintf(buffer, " Options: 1:%d 2:%d DMT:%d", option1_Get(), option2_Get(), dmt + (wdt << 1));
		eaDogM_WriteStringAtPos(2, 0, buffer);
		OledUpdate();
		WaitMs(5000);
	} else {
		sprintf(buffer, "I400HZ3P %s %s       ", build_date, build_time);
		eaDogM_WriteStringAtPos(0, 0, buffer);
		sprintf(buffer, "Clock Status %04x      ", CLKSTAT);
		eaDogM_WriteStringAtPos(1, 0, buffer);
		sprintf(buffer, " Options: 1:%d 2:%d DMT:%d", option1_Get(), option2_Get(), dmt + (wdt << 1));
		eaDogM_WriteStringAtPos(2, 0, buffer);
		OledUpdate();
		WaitMs(1500);
	}


	/*
	 * sine slew speed routines for inverter function
	 */
	sine_table(false);
	/*
	 * sine_foo slow speed routines, motor functions.
	 */
	fillTable();
	preset_phase();
	/*
	 * start background ADC conversion scans
	 */
	init_end_of_adc_scan();
	StartTimer(TMR_MOTOR, 1);
	StartTimer(TMR_DISPLAY, 500);
	StartTimer(TMR_VEL, 1000);
	StartTimer(TMR_ADC, 10);
	StartTimer(TMR_DMT, DMT_UPDATE);

	/* Start system tick timer */
	CORETIMER_Start();

	V.vcan_state = V_home;
	//	TMR3_Start(); // start auto movement functions
	PWM_motor2(M_PWM);
	V.StartTime = (uint32_t) _CP0_GET_COUNT();
	/*
	 * start ISR for PWM waveform generator
	 */
	TMR2_Stop();
	TMR2_CallbackRegister(wave_gen, 0);
	TMR2_Start();
	// setup motor position values
	m35_4.current = MPCURRENT;
	V.pacing = 1;
	phase_duty(&m35_2, m35_4.current, V.m_speed, V.pacing);
	phase_duty(&m35_3, m35_4.current, V.m_speed, V.pacing);
	phase_duty(&m35_4, m35_4.current, V.m_speed, V.pacing);

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_4.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_3.duty);
	/*
	 * enable inverter channels
	 */
	U1_EN_Set();
	U2_EN_Set();
	init_faults(); // PWM faults from the bridge driver chips
	//	ADCHS_CallbackRegister(ADCHS_CH1, an1_callback, 0);
	ADCHS_CallbackRegister(ADCHS_CH3, an3_callback, 0);
	MCPWM_Start();
	V.pwm_stop = false; // let ISR generate waveforms

	/*
	 * init serial command parser on USART3
	 */
	scmd_init();
	/*
	 * clear startup faults
	 */
	V.fault_count = 0;
	V.fault_ticks = 0;

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();
		ProcessPetitModbus(); // MODBUS processing 
		BSP_LED3_Clear();
//		POS3CNT = (int32_t) PetitRegisters[11].ActValue; // PWM offset from MODBUS master
		PetitRegisters[0].ActValue = (int16_t) hb_current(u1bi, true);
		PetitRegisters[1].ActValue = (int16_t) hb_current(u2ai, true);
		PetitRegisters[2].ActValue = (int16_t) hb_current(u2bi, true);
		PetitRegisters[3].ActValue = (int16_t) an_data[ANA1]; // AC voltage value
		PetitRegisters[4].ActValue = (int16_t) (MODBUS_VER << 8) + PWMF15_Get() + (PWMF5_Get() << 1) + (PWMF6_Get() << 2) + (U1_EN_Get() << 3) + (U2_EN_Get() << 4)+ (check_adc_ivref() << 5);
		PetitRegisters[5].ActValue = (int16_t) m35_4.current; // current pwm voltage output value

#ifndef G400HZ_NODIS
		if (TimerDone(TMR_MOTOR)) {
			StartTimer(TMR_MOTOR, MOTOR_UPDATES);
			/*
			 * read serial port 3 for command data
			 */
			cli_read(&cli_ctx);

			/*
			 * test switch interface with inverter control
			 */
			if (get_switch(S7)) { // pulse max power select
				/*
				 * changes value set from MODBUS and encoder
				 */
				POS3CNT = inverter_volts;
			}
			if (get_switch(S5)) { // reset power value
				/*
				 * changes value back to default
				 */
				POS3CNT = MPCURRENT;
			}

			if (get_switch(S2)) { // clear inverter fault
				clear_fault_flag();
			}

			if (get_switch(S1)) { // enable inverter power
				U1_EN_Set();
				U2_EN_Set();
			}

			if (get_switch(S0)) { // disengage inverter power
				U1_EN_Clear();
				U2_EN_Clear();
			}
		} else {
			/* flash the board led(s) using the position counter bits */
#ifdef QEI_SLOW
			LATGbits.LATG12 = POS3CNT >> 3;
			LATGbits.LATG13 = POS3CNT >> 5;
#else
			LATGbits.LATG12 = m35_ptr->pos >> 10;
			LATGbits.LATG13 = m35_ptr->pos >> 12;
#endif
			//run_tests(100000); // port diagnostics
			if (TimerDone(TMR_DISPLAY)) {
				//				DEBUGB0_Set();
				/* format and send data to LCD screen */
				OledClearBuffer();
				m35_ptr = &m35_2;
				sprintf(buffer, "I400HZ3P %s %s       ", build_date, build_time);
				eaDogM_WriteStringAtPos(0, 0, buffer);
				sprintf(buffer, "Q %4i:%i  F %i %i %i R %i A %i", POS3CNT, VEL3HLD, PWMF15_Get(), PWMF5_Get(), PWMF6_Get(), (bool) ~(dmt | wdt), check_adc_ivref());
				eaDogM_WriteStringAtPos(1, 0, buffer);
				m35_ptr = &m35_3;
				/*
				 * show some test results on the LCD screen
				 */
				sprintf(buffer, "Phase    L1   L2   L3     N");
				eaDogM_WriteStringAtPos(3, 0, buffer);
				sprintf(buffer, "%4i:P %4i %4i %4i  %4i   ", m35_2.erotations / (int) t1_time, hb_current(u1bi, false), hb_current(u2ai, false), hb_current(u2bi, false), hb_current(u_total, false));
				eaDogM_WriteStringAtPos(4, 0, buffer);
				sprintf(buffer, "%4i:M %4i %4i %4i  %4i      ", m35_2.indexcnt, hb_current(u1bi, true), hb_current(u2ai, true), hb_current(u2bi, true), hb_current(u_total, true));
				eaDogM_WriteStringAtPos(5, 0, buffer);
				sprintf(buffer, "%4i:S %4i %4i %4i  ", V.TimeUsed, m35_2.sine_steps, m35_3.sine_steps, m35_4.sine_steps);
				eaDogM_WriteStringAtPos(6, 0, buffer);
				sprintf(buffer, "%4i:Drive    %4i F%2i %2i", m35_4.current, POS3CNT, V.fault_count, V.fault_ticks);
				eaDogM_WriteStringAtPos(7, 0, buffer);
				sprintf(buffer, "%4i:D %5i %5i %5i  ", DMT_ClearWindowStatusGet(), m35_2.duty, m35_3.duty, m35_4.duty);
				eaDogM_WriteStringAtPos(8, 0, buffer);
				sprintf(buffer, "MB %4i %3X %3i %4i %4i", (int16_t) PetitRegisters[5].ActValue, (uint16_t) PetitRegisters[10].ActValue, (int16_t) PetitRegisters[11].ActValue, V.modbus_rx, V.modbus_tx);
				eaDogM_WriteStringAtPos(9, 0, buffer);
				sprintf(buffer, "DM %10i %10i", DMT_CounterGet(), DMT_TimeOutCountGet());
				eaDogM_WriteStringAtPos(10, 0, buffer);
				rawtime = time(&rawtime);
				strftime(buffer, sizeof(buffer), "%w %c", gmtime(&rawtime));
				eaDogM_WriteStringAtPos(12, 0, buffer);
				sprintf(buffer, "%4i:A U%4i V%4i W%4i %4i %4i", an_data[IVREF], an_data[ANA1], an_data[ANA3], ((-an_data[ANA1]) - an_data[ANA3]), an_data[POT1], an_data[POT2]);
				eaDogM_WriteStringAtPos(14, 0, buffer);
				sprintf(buffer, "CPU TEMPERATURE: %3.2fC    R%d", lp_filter_f(((((TEMP_OFFSET_ADC_STEPS - (double) an_data[TSENSOR]) * MV_STEP * TEMP_MV_C)) + 25.0), 4), dmt + (wdt << 1));
				eaDogM_WriteStringAtPos(15, 0, buffer);
				motor_graph(true, false);
				OledUpdate();
				StartTimer(TMR_DISPLAY, DISPLAY_UPDATE);
				//				DEBUGB0_Clear();
			}
		}
#endif
		if (TimerDone(TMR_ADC)) {
			StartTimer(TMR_ADC, ADC_UPDATE);
			start_adc_scan();
		}
		if (TimerDone(TMR_BLINK)) {
			StartTimer(TMR_BLINK, BLINK_UPDATE);
			RESET_LED_Toggle();
		}
		/*
		 * timer based DMT shutdown
		 */
		if (TimerDone(TMR_DMT)) {
			StartTimer(TMR_DMT, DMT_UPDATE);
			/*
			 * must be cleared within the instruction count window
			 * simple fast repeats of DMT_Clear() will not work
			 */
			if (V.dmt_sosc_flag) {
				DMT_Clear(); // clear the Dead Man Timer
				V.dmt_sosc_flag = false;
			}
		}
		/*
		 * PWM interrupt loss shutdown using DMT
		 */
		if (!V.pwm_update && ((V.StartTime + DMT_PWM_TIME) < (uint32_t) _CP0_GET_COUNT())) {
			UART3_Write((unsigned char *) " P\r\n", 4);
			DMT_Clear(); // clear the Dead Man Timer
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

