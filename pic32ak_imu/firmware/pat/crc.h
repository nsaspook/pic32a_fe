/* 
 * File:   crc.h
 * Author: root
 *
 * Created on March 12, 2020, 9:37 AM
 */

#ifndef CRC_H
#define	CRC_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <string.h>
#include "ibsmon.h"

	uint16_t crc16(volatile uint8_t *, uint16_t);
	uint16_t modbus_rtu_send_msg(void *, const void *, uint16_t);


#ifdef	__cplusplus
}
#endif

#endif	/* CRC_H */

