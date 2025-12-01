#include "imu.h"

static const double imu_table[] = {
	BMA490_ACCEL_MG_LSB_2G,
	BMA490_ACCEL_MG_LSB_4G,
	BMA490_ACCEL_MG_LSB_8G,
	BMA490_ACCEL_MG_LSB_16G,
	IMU_ACCEL_MG_SCALE,
	SCA3300_ACCEL_MG_LSB_15G,
	SCA3300_ACCEL_MG_LSB_3G,
	SCA3300_ACCEL_MG_LSB_6G,
	SCL3300_ACCEL_MG_LSB_12G,
	SCL3300_ACCEL_MG_LSB_24G,
	SCL3300_INC1,
	SCL3300_INC2,
};

static const uint8_t imu_name [][8] = {
	"BMA4x0",
	"SCA3300",
	"SCL3300",
	"BMA400",
	"BNO086",
	"NO IMU ",
};

char imu_buffer[IMU_BUF];
static uint32_t sensortime;
extern struct sca3300_data sdata;

double get_imu_scale(imu_cmd_t * imu)
{
	double accelRange = IMU_ACCEL_MG_SCALE;

	if (imu) { // null pointer check
		/*
		 * load the proper scaling constants
		 */
		switch (imu->acc_range) {
		case range_bno:
			accelRange = IMU_BNO_ACCEL_MG_SCALE_0;
			break;
		case range_16g:
			accelRange = BMA490_ACCEL_MG_LSB_16G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_8g:
			accelRange = BMA490_ACCEL_MG_LSB_8G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_4g:
			accelRange = BMA490_ACCEL_MG_LSB_4G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_15g:
		case range_15gl:
			accelRange = SCA3300_ACCEL_MG_LSB_15G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_3g:
			accelRange = SCA3300_ACCEL_MG_LSB_3G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_6g:
			accelRange = SCA3300_ACCEL_MG_LSB_6G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_12g:
			accelRange = SCL3300_ACCEL_MG_LSB_12G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_24g:
			accelRange = SCL3300_ACCEL_MG_LSB_24G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_inc1:
			accelRange = (double) SCL3300_INC1 * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_inc2:
			accelRange = (double) SCL3300_INC2 * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		case range_2g:
			accelRange = BMA490_ACCEL_MG_LSB_2G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
			break;
		default:
			if (imu->device == IMU_SCA3300) {
				accelRange = (double) SCA3300_ACCEL_MG_LSB_15G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
				imu->acc_range = range_15g; // update imu data structure
			} else {
				accelRange = (double) SCL3300_ACCEL_MG_LSB_12G * GRAVITY_EARTH * IMU_ACCEL_MG_SCALE;
				imu->acc_range = range_12g; // update imu data structure
			}
			break;
		}
	}
	return accelRange;
}

void getAllData(sSensorData_t *accel, imu_cmd_t * imu)
{
	int16_t x, y, z;
	int16_t xa, ya, za;
	double accelRange;

	accelRange = get_imu_scale(imu);

	// munge data to proper format for logging
	if (imu) { // null pointer check
		if (accel) { // null pointer check
			x = sdata.scan.channels[SCA3300_ACC_X];
			//			x = -x; // invert sign, no bit-twiddling
			y = sdata.scan.channels[SCA3300_ACC_Y];
			//			y = -y; // invert sign
			z = sdata.scan.channels[SCA3300_ACC_Z];
			accel->sensortime = sdata.scan.ts; // time log each accel measurement from TIMER
			accel->sensortemp = TEMPERATURE_OFFSET + (sdata.scan.channels[SCA3300_TEMP] / TEMPERATURE_RES);
			xa = sdata.scan.channels[SCL3300_ANG_X];
			ya = sdata.scan.channels[SCL3300_ANG_Y];
			za = sdata.scan.channels[SCL3300_ANG_Z];
			accel->xa = (double) xa / ANGLE_RES1 * ANGLE_RES2; // scale angle data
			accel->ya = (double) ya / ANGLE_RES1 * ANGLE_RES2;
			accel->za = (double) za / ANGLE_RES1 * ANGLE_RES2;
			accel->x = (double) x * accelRange; // scale to the correct units
			accel->y = (double) y * accelRange;
			accel->z = (double) z * accelRange;
		}
	}
}

const uint8_t * imu_string(const imu_cmd_t * imu)
{
	const uint8_t * str_ptr = imu_name[IMU_NONE];

	if (imu) { // null pointer check
		if (imu->device < IMU_LAST) {
			str_ptr = imu_name[imu->device];
		}
	}
	return str_ptr; // return name string
}
