/*
 * PIC32A analog sensor demo design
 * testing code to design a PCB from
 */

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include "definitions.h"                // SYS function prototypes

#include "lcd_drv/lcd_drv.h"
#include "timers.h"
#include "samples.h"
#include "is66.h"
#include "sca3300.h"
#include "imu.h"
#include "gfx.h"

static const char *build_date = __DATE__, *build_time = __TIME__;
static char buffer[IMU_BUF];
bool SW1_SET = false, SW2_SET = false;
volatile uint16_t tickCount[TMR_COUNT];
uint32_t board_serial_id = 0x35A;
double adc1_scaled = 0.0f, adc2_scaled = 0.0f;
sSensorData_t accel = {
	.id = 1,
};

/*
 * SCA3300-D01 instance
 */
imu_cmd_t __attribute__((address(YRAM))) imu0 = {
	.id = IMU_ID,
	.tbuf32[SCA3300_TRM] = SCA3300_SWRESET_32B,
	.online = false,
	.device = IMU_SCL3300, // device type
	.cs = IMU_CS, // chip select number
	.run = false,
	.crc_error = false,
	.log_timeout = SCA_LOG_TIMEOUT,
	.update = true,
	.features = false,
	.spi_bytes = 4, // 32-bit transfers
	.op.info_ptr = &sca3300_version,
	.op.imu_set_spimode = &sca3300_set_spimode,
	.op.imu_getid = &sca3300_getid,
	.op.imu_getserial = &sca3300_getserial,
	.op.imu_getdata = &sca3300_getdata,
	.acc_range = range_inc2,
	.acc_range_scl = range_inc2,
	.angles = false,
	.locked = true,
	.warn = false,
	.down = false,
};

int main(void)
{
	RAMXECCCON = 0x00008000; // ECC enables
	RAMYECCCON = 0x00008000;
	PWBXECCCON = 0x00008000;
	PWBYECCCON = 0x00008000;
	/* Initialize all modules */
	SYS_Initialize(NULL);

	TMR1_CallbackRegister(timer_ms_tick, 0);
	TMR1_InterruptEnable();
	TMR1_Start(); // software timers hardware time-base
	//	PWM_GeneratorEnable(PWM_GENERATOR_1);

	/*
	 * setup GLCD background update tasks
	 */
	init_lcd_drv(D_INIT);
	OledClearBuffer();
	wait_lcd_done();

	snprintf(buffer, IMU_BUF - 1, "DEV%lX REV%lX U%lX%lX   ", *(uint32_t*) 0x7C2000, *(uint32_t*) 0x7C2004, *(uint32_t*) 0x7F2BE0, *(uint32_t*) 0x7F2BE4);
	eaDogM_WriteStringAtPos(15, 0, buffer);
	fe_version();
	eaDogM_WriteStringAtPos(11, 0, imu_buffer);
	imu0.op.info_ptr();
	eaDogM_WriteStringAtPos(13, 0, imu_buffer);
	OledUpdate();

	/*
	 * read the iss66 chip ID register
	 */
	if (ISS_read_id() != ISS_ISS_UNK) {
		ADC_DMA_init(); // setup background ADC data tasks
	}
	CMP1_DACDataWrite(DAC1_CAL);
	/*
	 * configure SPI port for IMU if needed, detect sensor and config
	 */
	imu0.op.imu_set_spimode(&imu0); // setup the IMU chip for SPI comms, X updates per second @ selected G range with tilt angles
	imu0.op.imu_getserial(&imu0);
	imu0.op.imu_getid(&imu0);

	snprintf(buffer, IMU_BUF - 1, "%s, serial %lX      ", imu_string(&imu0), imu0.board_serial_id);
	eaDogM_WriteStringAtPos(1, 0, buffer);

	StartTimer(TMR_TEST, DIS_TICKS); // GLCD screen updates every 2ms
	StartTimer(TMR_IMU_DATA, IMU_TICKS); // IMU data updates every xms
	SCCP2_TimerStart(); // ADC timer start

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();
		if (TimerDone(TMR_TEST)) {
			RLED_Toggle();
			if (!SW2_SET) {
				StartTimer(TMR_TEST, DIS_TICKS);
				ADC_DMA_read();
				if (!SW1_SET) {
					snprintf(buffer, IMU_BUF - 1, "S%lu, I%X%X%X, D%u D%u", total_sample_triggers, iss_read_id_buffer[4], iss_read_id_buffer[5], iss_read_id_buffer[6],
						(uint16_t) adc_result[ADC1_D], (uint16_t) adc_result[ADC2_D]);
					eaDogM_WriteStringAtPos(0, 0, buffer);
				}
				snprintf(buffer, IMU_BUF - 1, "%6.3f,%6.3f,%6.3f,%5.2fC", accel.xa, accel.ya, accel.za, accel.sensortemp);
				eaDogM_WriteStringAtPos(2, 0, buffer);
				snprintf(buffer, IMU_BUF - 1, "%6.3f,%6.3f,%6.3f, %lu   ", accel.x, accel.y, accel.z, imu0.rs);
				eaDogM_WriteStringAtPos(3, 0, buffer);
				__builtin_disable_interrupts();
				adc1_scaled = (double) adc_result[ADC1_D] * ADC1_SCALE;
				adc2_scaled = (double) adc_result[ADC2_D] * ADC2_SCALE;
				__builtin_enable_interrupts();
				snprintf(buffer, IMU_BUF - 1, "ADC1 Voltage: %7.4f Volts", adc1_scaled);
				eaDogM_WriteStringAtPos(4, 0, buffer);
				snprintf(buffer, IMU_BUF - 1, "ADC2 Voltage: %7.4f Volts", adc2_scaled);
				eaDogM_WriteStringAtPos(5, 0, buffer);
				if (!SW1_SET) {
					__builtin_disable_interrupts();
					snprintf(buffer, IMU_BUF - 1, "ISS Readback:  D%4u  D%4u      ", adc_iss_result[ADC1_D], adc_iss_result[ADC2_D]);
					eaDogM_WriteStringAtPos(6, 0, buffer);
					adc1_scaled = (double) adc_iss_result[ADC1_D] * ADC1_SCALE;
					adc2_scaled = (double) adc_iss_result[ADC2_D] * ADC2_SCALE;
					__builtin_enable_interrupts();
					snprintf(buffer, IMU_BUF - 1, "ISS Volts   :  %6.4f %6.4f      ", adc1_scaled, adc2_scaled);
					eaDogM_WriteStringAtPos(7, 0, buffer);
					snprintf(buffer, IMU_BUF - 1, "ISS Samples : S%lu       ", total_iss_triggers);
					eaDogM_WriteStringAtPos(8, 0, buffer);
					DLED_Toggle();
				}
				if (SW1_SET) {
					uint16_t i = 1;

					LA_gfx(false, false, 0);
					while ((i++ < 15)) {
						// extra processing loop while waiting for clock time to expire
						LA_gfx(false, false, 15);
					}
					if (TimerDone(TMR_GFX)) {
						OledClearBuffer();
						StartTimer(TMR_GFX, GFX_TICKS);
					}
				}
				OledUpdate();
			} else {
				OledClearBuffer();
				snprintf(buffer, IMU_BUF - 1, "%6.3f,%6.3f,%6.3f,%5.2fC", accel.xa, accel.ya, accel.za, accel.sensortemp);
				eaDogM_WriteStringAtPos(2, 0, buffer);
				snprintf(buffer, IMU_BUF - 1, "%6.3f,%6.3f,%6.3f, %lu   ", accel.x, accel.y, accel.z, imu0.rs);
				eaDogM_WriteStringAtPos(3, 0, buffer);
				vector_graph_fs();
				OledUpdate();
			}
		}

		if (TimerDone(TMR_IMU_DATA)) {
			StartTimer(TMR_IMU_DATA, IMU_TICKS);
			imu0.op.imu_getdata(&imu0);
			imu0.update = false;
			getAllData(&accel, &imu0); // convert data from the IMU chip
			q0 = accel.x / 1.0f;
			q1 = accel.y / 1.0f;
			q2 = accel.z / 1.0f;
			q3 = q0;
			snprintf(buffer, IMU_BUF - 1, "%5.2f,%5.2f,%5.2f,%5.2f,%5.2f,%5.2f,%5.2f\r", 0.1f, accel.xa, accel.ya, accel.za, accel.x, accel.y, accel.z);
			UART1_Write((uint8_t*) buffer, strlen(buffer));
		}

		if (!SW1_Get()) {
			OledClearBuffer();
			SW1_SET = true;
			SW2_SET = false;
			StartTimer(TMR_GFX, GFX_TICKS);
		}

		if (!SW2_Get()) {
			OledClearBuffer();
			SW2_SET = true;
			SW1_SET = false;
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

void fe_version(void)
{
	snprintf(imu_buffer, IMU_BUF - 1, "%s Driver %s       %s %s         ", FE_ALIAS, FE_DRIVER, build_date, build_time);
}
/*******************************************************************************
 End of File
 */

