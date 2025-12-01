/* 
 * File:   gfx.h
 * Author: root
 *
 * Created on March 5, 2021, 10:19 AM
 */

#ifndef GFX_H
#define	GFX_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "vcan.h"
#include <math.h>
#include "../lcd_drv/lcd_drv.h"

	extern int32_t xa, ya, za;
	extern volatile float q0, q1, q2, q3; // quaternion 

	void line_rot(uint32_t, uint32_t, uint32_t, uint32_t);
	void vector_graph(bool motion, bool reset);
	void LA_gfx(bool, bool, uint32_t);
	void motor_graph(bool motion, bool reset);

#ifdef	__cplusplus
}
#endif

#endif	/* GFX_H */

