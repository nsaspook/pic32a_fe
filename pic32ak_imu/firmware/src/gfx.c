#include "gfx.h"

void line_rot(uint32_t x1, uint32_t y1, uint32_t x2, uint32_t y2)
{
	OledMoveTo((int32_t) x1, (int32_t) y1);
	OledLineTo((int32_t) x2, (int32_t) y2);
}

void motor_graph(bool motion, bool reset)
{
	static uint32_t irow = 0;
	static int32_t x2 = 205, x1 = 220, y1 = 100, xn1, yn1, xn2, yn2, r;
	static double theta1 = sinea, theta2 = sineb, theta3 = sinec;
	static double ra, si, co, steps = 0.0;

	if (reset) {
		irow = 0;
		theta1 = sinea;
		theta2 = sineb;
		theta3 = sinec;
	}

	if (motion) {
		steps = 8.0;
	} else {
		steps = -8.0;
	}

	//Starting point
	xn1 = x1;
	yn1 = y1;

	//Convert Degree into radian
	r = x2 - x1;
	ra = 0.0175 * theta1;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);
	ra = 0.0175 * theta2;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);
	ra = 0.0175 * theta3;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);

	irow++;
	theta1 = theta1 + steps; // rotate
	if (theta1 > sine_res) {
		theta1 = 0.0;
	} else {
		if (theta1 < 0.0) {
			theta1 = sine_res;
		}
	}

	theta2 = theta2 + steps; // rotate
	if (theta2 > sine_res) {
		theta2 = 0.0;
	} else {
		if (theta2 < 0.0) {
			theta2 = sine_res;
		}
	}

	theta3 = theta3 + steps; // rotate
	if (theta3 > sine_res) {
		theta3 = 0.0;
	} else {
		if (theta3 < 0.0) {
			theta3 = sine_res;
		}
	}

}

void vector_graph(bool motion, bool reset)
{
	static uint32_t irow = 0;
	static int32_t x2 = 90, x1 = 120, y1 = 35, xn1, yn1, xn2, yn2, r;
	static double theta1 = sinea, theta2 = sineb, theta3 = sinec;
	static double ra, si, co, steps = 0.0;

	if (reset) {
		irow = 0;
		theta1 = sinea;
		theta2 = sineb;
		theta3 = sinec;
	}

	if (motion) {
		steps = 3.0;
	} else {
		steps = -3.0;
	}

	//Starting point
	xn1 = x1;
	yn1 = y1;

	//Convert Degree into radian
	r = x2 - x1;
	ra = 0.0175 * theta1;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);
	ra = 0.0175 * theta2;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);
	ra = 0.0175 * theta3;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);

	irow++;
	theta1 = theta1 + steps; // rotate
	if (theta1 > sine_res) {
		theta1 = 0.0;
	} else {
		if (theta1 < 0.0) {
			theta1 = sine_res;
		}
	}

	theta2 = theta2 + steps; // rotate
	if (theta2 > sine_res) {
		theta2 = 0.0;
	} else {
		if (theta2 < 0.0) {
			theta2 = sine_res;
		}
	}

	theta3 = theta3 + steps; // rotate
	if (theta3 > sine_res) {
		theta3 = 0.0;
	} else {
		if (theta3 < 0.0) {
			theta3 = sine_res;
		}
	}
}

/*
 *
 * Basic Lorenz Attractor code 
 * https://www.stsci.edu/~lbradley/seminar/attractors.html
 */
void LA_gfx(bool reset, bool redraw, uint32_t turns)
{
	static double x = 0.1;
	static double y = 0;
	static double z = 0;
	static double a = 10.0;
	static double b = 28.0;
	static double c = 8.0 / 3.0;
	static double t = 0.01;
	static uint32_t i = 0;

	//Iterate and update x,y and z locations
	//based upon the Lorenz equations
	if (redraw) {
		i = 0;
		return;
	}

	if (reset) {
		x = 0.1;
		y = 0;
		z = 0;
		a = 10.0;
		b = 28.0;
		c = 8.0 / 3.0;
		t = 0.01;
		i = 0;
		return;
	}

	if (i++ >= turns) {
		i = turns;
		//		dtog_Clear();
		return;
	}

	double xt = x + t * a * (y - x);
	double yt = y + t * (x * (b - z) - y);
	double zt = z + t * (x * y - c * z);
	x = xt;
	y = yt;
	z = zt;
#ifdef SHOW_STATS
	xa = (x * 1.5) + 40;
	ya = (z * 1.5) + 10; // xz plot
	//	ya = (y * 1.5) + 40; // xy plot
#else
	xa = (x * 1.25) + 200;
	ya = (z * 0.75) + 20; // xz plot
	//	ya = (y * 1.5) + 40; // xy plot
#endif
	za = z;
	OledMoveTo(xa, ya);
	OledLineTo(xa + 1, ya + 1);
}
