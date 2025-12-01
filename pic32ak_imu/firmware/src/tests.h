/* 
 * File:   tests.h
 * Author: root
 *
 * Created on June 13, 2020, 3:16 PM
 */

#ifndef TESTS_H
#define	TESTS_H

#ifdef	__cplusplus
extern "C" {
#endif
	
//#define BOARD_TESTS
#define QEI_SLOW

#include "config/default/definitions.h"                 // SYS function prototypes
#include <proc/p32mk1024mcm100.h>
#include "../lcd_drv/lcd_drv.h"

	bool run_tests(uint32_t);
	bool spi_tests(void);
	bool uart_tests(void);

#ifdef	__cplusplus
}
#endif

#endif	/* TESTS_H */

