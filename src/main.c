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
#include "definitions.h"                // SYS function prototypes

#include "lcd_drv/lcd_drv.h"
#include "timers.h"
#include "samples.h"
#include "is66.h"
#include "sca3300.h"
#include "imu.h"

static char buffer[256];
volatile uint16_t tickCount[TMR_COUNT];
uint32_t board_serial_id = 0x35A;
sSensorData_t accel = {
	.id = 1,
};

#define DIS_TICKS	100
#define IMU_TICKS	50

#ifdef SCA3300

/*
 * SCA3300-D01 instance
 */
imu_cmd_t imu0 = {
	.id = 3,
	.tbuf32[SCA3300_TRM] = SCA3300_SWRESET_32B,
	.online = false,
	.device = IMU_SCL3300, // device type
	.cs = IMU_CS, // chip select number
	.run = false,
	.crc_error = false,
	.log_timeout = SCA_LOG_TIMEOUT,
	.update = true,
	.features = false,
	.spi_bytes = 4,
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
#endif

int main(void)
{
	/* Initialize all modules */
	SYS_Initialize(NULL);

	TMR1_CallbackRegister(timer_ms_tick, 0);
	TMR1_InterruptEnable();
	TMR1_Start(); // software timers hardware time-base

	/*
	 * setup GLCD background update tasks
	 */
	init_lcd_drv(D_INIT);
	OledClearBuffer();
	wait_lcd_done();

	snprintf(buffer, 255, "DEV%X REV%X U%X%X   ", *(uint32_t*) 0x7C2000, *(uint32_t*) 0x7C2004, *(uint32_t*) 0x7F2BE0, *(uint32_t*) 0x7F2BE4);
	eaDogM_WriteStringAtPos(15, 0, buffer);
	imu0.op.info_ptr();
	eaDogM_WriteStringAtPos(13, 0, imu_buffer);
	OledUpdate();
	StartTimer(TMR_TEST, 2);
	/*
	 * read the iss66 chip ID register
	 * will convert to a proper ID function later, now it's just for display
	 */
	SRAM_CS_Clear();
	SPI2_WriteRead((void *) iss_read_id, sizeof(iss_read_id), iss_read_id_buffer, sizeof(iss_read_id));
	while (!TimerDone(TMR_TEST)) {
	};
	SRAM_CS_Set();
	ADC_DMA_init(); // setup background ADC data tasks
	/*
	 * configure SPI port for IMU if needed, detect sensor and config
	 */
	imu0.op.imu_set_spimode(&imu0); // setup the IMU chip for SPI comms, X updates per second @ selected G range with tilt angles
	imu0.op.imu_getserial(&imu0);
	imu0.op.imu_getid(&imu0);

	snprintf(buffer, 255, "%s, serial %X      ", imu_string(&imu0), imu0.board_serial_id);
	eaDogM_WriteStringAtPos(1, 0, buffer);

	StartTimer(TMR_TEST, DIS_TICKS); // GLCD screen updates every 2ms
	StartTimer(TMR_IMU_DATA, IMU_TICKS); // IMU data updates every xms
	SCCP2_TimerStart(); // ADC timer start

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();
		if (TimerDone(TMR_TEST)) {
			snprintf(buffer, 255, "S%u, SRAM-ID% X%X%X, V%u   ", total_sample_triggers, iss_read_id_buffer[4], iss_read_id_buffer[5], iss_read_id_buffer[6], adc_result);
			eaDogM_WriteStringAtPos(0, 0, buffer);
			OledUpdate();
			StartTimer(TMR_TEST, DIS_TICKS);
			snprintf(buffer, 255, "%6.3f,%6.3f,%6.3f,%5.2fC", accel.xa, accel.ya, accel.za, accel.sensortemp);
			eaDogM_WriteStringAtPos(2, 0, buffer);
			snprintf(buffer, 255, "%6.3f,%6.3f,%6.3f, %d   ", accel.x, accel.y, accel.z, imu0.rs);
			eaDogM_WriteStringAtPos(3, 0, buffer);
		}

		if (TimerDone(TMR_IMU_DATA)) {
			StartTimer(TMR_IMU_DATA, IMU_TICKS);
			imu0.op.imu_getdata(&imu0);
			imu0.update = false;
			getAllData(&accel, &imu0); // convert data from the IMU chip
			RLED_Toggle();
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}


/*******************************************************************************
 End of File
 */

