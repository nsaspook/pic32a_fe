#include "freqgen.h"

static double sine_const[sine_res + 1];
static double table[256];
extern struct QEI_DATA m35_1, m35_2, m35_3, m35_4;

static double sine_foo(volatile struct QEI_DATA *);

/*
 * slew speed sine table
 */
void sine_table(bool saddleback)
{
	int I, H, j = 1;

	for (I = 0; I < sine_res; I++) {
		sine_const[I] = sin((M_PI * 2.0 * (double) I) / (double) sine_res);
		H = I * HARMONIC_NUM; // need third harmonic
		if (H >= (sine_res * j)) {
			H = H - (sine_res * j);
			j++;
		}
		/*
		 * compute saddle-back waveform instead of pure sine
		 * THA sets the harmonic content, 1/6 is the recommended amount but we use more here
		 */
		if (saddleback) {
			sine_const[I] = sine_const[I] + ((sin((M_PI * 2.0 * (double) H) / (double) sine_res)) * THA);
		}
	}
}

/*
 * slew speed sinusoidal commutation for PWM using table
 */
int32_t phase_duty_table(volatile struct QEI_DATA * const phase, const double mag, const int32_t adj)
{
	int32_t next_step = sine_steps_adj(phase, adj);

	if (next_step >= sine_res) {
		phase->sine_steps = 0;
		phase->erotations++;
	}

	if (next_step < 0) {
		phase->sine_steps = sine_res;
		phase->erotations--;
	}

	phase->duty = (int32_t) (hpwm_mid_duty_f + (mag * (sine_const[phase->sine_steps])));

	if (phase->duty > hpwm_high_duty) {
		phase->duty = hpwm_high_duty;
	}
	if (phase->duty < hpwm_low_duty) {
		phase->duty = hpwm_low_duty;
	}
	return phase->duty;
}

/*
 * adjust sine steps on in the positive or negative, adj set to zero holds current count
 */
int32_t sine_steps_adj(volatile struct QEI_DATA * const phase, const int32_t adj)
{
	if (adj > sine_res) {
		return phase->sine_steps; // do nothing
	}

	phase->sine_steps = phase->sine_steps + adj;

	return phase->sine_steps;
}

/*
 * micro-stepping  sinusoidal commutation for PWM using sine_foo or constant table
 */
int32_t phase_duty(
	volatile struct QEI_DATA * const phase, const double mag, const M_SPEED mode, const int32_t adj)
{
	if (mode == M_SLEW) {
		return phase_duty_table(phase, mag, adj);
	} else {
		phase->duty = (int32_t) (hpwm_mid_duty_f + (mag * sine_foo(phase)));

		if (phase->duty > hpwm_high_duty) {
			phase->duty = hpwm_high_duty;
		}
		if (phase->duty < hpwm_low_duty) {
			phase->duty = hpwm_low_duty;
		}
		return phase->duty;
	}
}

/*
 * https://namoseley.wordpress.com/2015/07/26/sincos-generation-using-table-lookup-and-iterpolation/
 */

/*Get integer types with well-defined number of bits */

/* Define a table of 256 entries containing a single cycle waveform.
   The table entries are not shown.
 */

/* Fill the table with a single sin(x) cycle */
void fillTable(void)
{
	uint32_t i;
	for (i = 0; i < 256; i++) {
		table[i] = sin(2.0 * M_PI * (double) i / 256.0);
	}
}

/*
 * add 120 and 240 degree offsets to phase B and C
 */
void preset_phase(void)
{
	uint32_t i;

	for (i = 0; i < SR120; i++) {
		sine_foo(&m35_3);
	}
	for (i = 0; i < SR240; i++) {
		sine_foo(&m35_4);
	}
}

/*
 * generate one complete sine-wave cycle at one step per call
 */
static double sine_foo(volatile struct QEI_DATA * const phase)
{
	/* Increment the phase accumulator */
	phase->phaseAccumulator += phase->phaseIncrement;
	/* Limit the phase accumulator to 24 bits.
	   The lower 16 bits are the fractional table
	   index part, while the remaining 8 bits
	   are the integer index into the waveform
	   table.
	 */
	phase->phaseAccumulator &= (256 * 65536) - 1;

	/* Calculate the table index. */
	uint32_t index = phase->phaseAccumulator >> 16;

	/* Get the table entry and the one
	   directly following it.
	 */
	double v_sin = table[index];
	double v_cos = table[(index + 64) & 255];
	double frac = 2.0f * PI * (double) (phase->phaseAccumulator & 65535) / 65536.0f / 256.0f;

	// fractional sin/cos
	double f_sin = frac;
	double f_cos = 1.0f - 0.5f * frac*frac;

	double result = v_sin * f_cos + v_cos*f_sin;

	if (++phase->phase_steps >= SAMPLERATE) { // reset per electrical rotation cycle
		phase->phase_steps = 0;
		phase->phaseAccumulator = 0;
	}
	phase->sin = result;
	return result;
}

/******************************************************************************/
/*                   SIN Table  256  -  0.0244rad resolution                            */
/******************************************************************************/
const float sineTable[TABLE_SIZE] =
	// <editor-fold defaultstate="collapsed" desc="Sine Table">
{
	0.000000, 0.024541, 0.049068, 0.073565, 0.098017, 0.122411, 0.146730, 0.170962,
	0.195090, 0.219101, 0.242980, 0.266713, 0.290285, 0.313682, 0.336890, 0.359895,
	0.382683, 0.405241, 0.427555, 0.449611, 0.471397, 0.492898, 0.514103, 0.534998,
	0.555570, 0.575808, 0.595699, 0.615232, 0.634393, 0.653173, 0.671559, 0.689541,
	0.707107, 0.724247, 0.740951, 0.757209, 0.773010, 0.788346, 0.803208, 0.817585,
	0.831470, 0.844854, 0.857729, 0.870087, 0.881921, 0.893224, 0.903989, 0.914210,
	0.923880, 0.932993, 0.941544, 0.949528, 0.956940, 0.963776, 0.970031, 0.975702,
	0.980785, 0.985278, 0.989177, 0.992480, 0.995185, 0.997290, 0.998795, 0.999699,
	1.000000, 0.999699, 0.998795, 0.997290, 0.995185, 0.992480, 0.989177, 0.985278,
	0.980785, 0.975702, 0.970031, 0.963776, 0.956940, 0.949528, 0.941544, 0.932993,
	0.923880, 0.914210, 0.903989, 0.893224, 0.881921, 0.870087, 0.857729, 0.844854,
	0.831470, 0.817585, 0.803208, 0.788346, 0.773010, 0.757209, 0.740951, 0.724247,
	0.707107, 0.689541, 0.671559, 0.653173, 0.634393, 0.615232, 0.595699, 0.575808,
	0.555570, 0.534998, 0.514103, 0.492898, 0.471397, 0.449611, 0.427555, 0.405241,
	0.382683, 0.359895, 0.336890, 0.313682, 0.290285, 0.266713, 0.242980, 0.219101,
	0.195090, 0.170962, 0.146730, 0.122411, 0.098017, 0.073565, 0.049068, 0.024541,
	0.000000, -0.024541, -0.049068, -0.073565, -0.098017, -0.122411, -0.146730, -0.170962,
	-0.195090, -0.219101, -0.242980, -0.266713, -0.290285, -0.313682, -0.336890, -0.359895,
	-0.382683, -0.405241, -0.427555, -0.449611, -0.471397, -0.492898, -0.514103, -0.534998,
	-0.555570, -0.575808, -0.595699, -0.615232, -0.634393, -0.653173, -0.671559, -0.689541,
	-0.707107, -0.724247, -0.740951, -0.757209, -0.773010, -0.788346, -0.803208, -0.817585,
	-0.831470, -0.844854, -0.857729, -0.870087, -0.881921, -0.893224, -0.903989, -0.914210,
	-0.923880, -0.932993, -0.941544, -0.949528, -0.956940, -0.963776, -0.970031, -0.975702,
	-0.980785, -0.985278, -0.989177, -0.992480, -0.995185, -0.997290, -0.998795, -0.999699,
	-1.000000, -0.999699, -0.998795, -0.997290, -0.995185, -0.992480, -0.989177, -0.985278,
	-0.980785, -0.975702, -0.970031, -0.963776, -0.956940, -0.949528, -0.941544, -0.932993,
	-0.923880, -0.914210, -0.903989, -0.893224, -0.881921, -0.870087, -0.857729, -0.844854,
	-0.831470, -0.817585, -0.803208, -0.788346, -0.773010, -0.757209, -0.740951, -0.724247,
	-0.707107, -0.689541, -0.671559, -0.653173, -0.634393, -0.615232, -0.595699, -0.575808,
	-0.555570, -0.534998, -0.514103, -0.492898, -0.471397, -0.449611, -0.427555, -0.405241,
	-0.382683, -0.359895, -0.336890, -0.313682, -0.290285, -0.266713, -0.242980, -0.219101,
	-0.195090, -0.170962, -0.146730, -0.122411, -0.098017, -0.073565, -0.049068, -0.024541
};
// </editor-fold>
/******************************************************************************/
/*                   COS Table  -  0.0244rad resolution                                     */
/******************************************************************************/
const float cosineTable[TABLE_SIZE] =
	// <editor-fold defaultstate="collapsed" desc="Cosine Table">
{
	1.000000, 0.999699, 0.998795, 0.997290, 0.995185, 0.992480, 0.989177, 0.985278,
	0.980785, 0.975702, 0.970031, 0.963776, 0.956940, 0.949528, 0.941544, 0.932993,
	0.923880, 0.914210, 0.903989, 0.893224, 0.881921, 0.870087, 0.857729, 0.844854,
	0.831470, 0.817585, 0.803208, 0.788346, 0.773010, 0.757209, 0.740951, 0.724247,
	0.707107, 0.689541, 0.671559, 0.653173, 0.634393, 0.615232, 0.595699, 0.575808,
	0.555570, 0.534998, 0.514103, 0.492898, 0.471397, 0.449611, 0.427555, 0.405241,
	0.382683, 0.359895, 0.336890, 0.313682, 0.290285, 0.266713, 0.242980, 0.219101,
	0.195090, 0.170962, 0.146730, 0.122411, 0.098017, 0.073565, 0.049068, 0.024541,
	0.000000, -0.024541, -0.049068, -0.073565, -0.098017, -0.122411, -0.146730, -0.170962,
	-0.195090, -0.219101, -0.242980, -0.266713, -0.290285, -0.313682, -0.336890, -0.359895,
	-0.382683, -0.405241, -0.427555, -0.449611, -0.471397, -0.492898, -0.514103, -0.534998,
	-0.555570, -0.575808, -0.595699, -0.615232, -0.634393, -0.653173, -0.671559, -0.689541,
	-0.707107, -0.724247, -0.740951, -0.757209, -0.773010, -0.788346, -0.803208, -0.817585,
	-0.831470, -0.844854, -0.857729, -0.870087, -0.881921, -0.893224, -0.903989, -0.914210,
	-0.923880, -0.932993, -0.941544, -0.949528, -0.956940, -0.963776, -0.970031, -0.975702,
	-0.980785, -0.985278, -0.989177, -0.992480, -0.995185, -0.997290, -0.998795, -0.999699,
	-1.000000, -0.999699, -0.998795, -0.997290, -0.995185, -0.992480, -0.989177, -0.985278,
	-0.980785, -0.975702, -0.970031, -0.963776, -0.956940, -0.949528, -0.941544, -0.932993,
	-0.923880, -0.914210, -0.903989, -0.893224, -0.881921, -0.870087, -0.857729, -0.844854,
	-0.831470, -0.817585, -0.803208, -0.788346, -0.773010, -0.757209, -0.740951, -0.724247,
	-0.707107, -0.689541, -0.671559, -0.653173, -0.634393, -0.615232, -0.595699, -0.575808,
	-0.555570, -0.534998, -0.514103, -0.492898, -0.471397, -0.449611, -0.427555, -0.405241,
	-0.382683, -0.359895, -0.336890, -0.313682, -0.290285, -0.266713, -0.242980, -0.219101,
	-0.195090, -0.170962, -0.146730, -0.122411, -0.098017, -0.073565, -0.049068, -0.024541,
	0.000000, 0.024541, 0.049068, 0.073565, 0.098017, 0.122411, 0.146730, 0.170962,
	0.195090, 0.219101, 0.242980, 0.266713, 0.290285, 0.313682, 0.336890, 0.359895,
	0.382683, 0.405241, 0.427555, 0.449611, 0.471397, 0.492898, 0.514103, 0.534998,
	0.555570, 0.575808, 0.595699, 0.615232, 0.634393, 0.653173, 0.671559, 0.689541,
	0.707107, 0.724247, 0.740951, 0.757209, 0.773010, 0.788346, 0.803208, 0.817585,
	0.831470, 0.844854, 0.857729, 0.870087, 0.881921, 0.893224, 0.903989, 0.914210,
	0.923880, 0.932993, 0.941544, 0.949528, 0.956940, 0.963776, 0.970031, 0.975702,
	0.980785, 0.985278, 0.989177, 0.992480, 0.995185, 0.997290, 0.998795, 0.999699
};
// </editor-fold>

/******************************************************************************/
/* Function name: MCLIB_SinCosCalc                                            */
/* Function parameters: rotor_angle                                           */
/* Function return: sineAngle, cosAngle                                       */
/* Description: Calculates the sin and cosine of angle based upon             */
/*              interpolation technique from the table.                       */

/******************************************************************************/
void MCLIB_SinCosCalc(float const rotor_angle, float* sineAngle, float* cosAngle)
{
	float angle = rotor_angle;
	/*
	   Since we are using "float", it is not possible to get an index of array
	   directly. Almost every time, we will need to do interpolation, as per
	   following equation: -
	   y = y0 + (y1 - y0)*((x - x0)/(x1 - x0)) */

	uint32_t y0_Index;
	uint32_t y0_IndexNext;
	float x0, y0, y1, temp;

	// Software check to ensure  0 <= Angle < 2*PI
	if (angle < 0) {
		angle = angle + TOTAL_SINE_TABLE_ANGLE;
	}

	if (angle >= TOTAL_SINE_TABLE_ANGLE) {
		angle = angle - TOTAL_SINE_TABLE_ANGLE;
	}


	y0_Index = (uint32_t) (angle / ANGLE_STEP);
	y0_IndexNext = y0_Index + 1;

	if (y0_IndexNext >= TABLE_SIZE) {
		y0_IndexNext = 0;
	}

	x0 = (y0_Index * ANGLE_STEP);

	/* Since below calculation is same for sin & cosine, we can do it once and reuse. */
	temp = ((angle - x0) * ONE_BY_ANGLE_STEP);

	/*==============  Find Sine now  =============================================*/
	y0 = sineTable[y0_Index];
	y1 = sineTable[y0_IndexNext];
	*sineAngle = y0 + ((y1 - y0) * temp);

	/*==============  Find Cosine now  =============================================*/
	y0 = cosineTable[y0_Index];
	y1 = cosineTable[y0_IndexNext];
	*cosAngle = y0 + ((y1 - y0) * temp);

}

/******************************************************************************/
/* Function name: MCLIB_WrapAngle                                             */
/* Function parameters: angle                                                  */
/* Function return: None                                                      */
/* Description:  Maps angle to [ 0, 2pi ] range                               */

/******************************************************************************/
void MCLIB_WrapAngle(float * const angle)
{
	if (*angle >= SINGLE_ELEC_ROT_RADS_PER_SEC) {
		*angle -= SINGLE_ELEC_ROT_RADS_PER_SEC;
	} else if (0.0f > *angle) {
		*angle += SINGLE_ELEC_ROT_RADS_PER_SEC;
	} else {
		/* Do nothing */
	}
}




