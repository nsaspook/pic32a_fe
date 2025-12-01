/*  PetitModbus Version 1.0
 *  Author  :   Firat DEVECI
 *  Date    :   27.07.16
 *  
 *  Tips    :   If you want to use RS485 you have to use RX-Pull-Up Resistor!
 */
#ifndef __PETITMODBUSPORT__H
#define __PETITMODBUSPORT__H

#include "PetitModbus.h"

#ifndef TRUE
#define TRUE  1
#endif
#ifndef FALSE
#define FALSE 0
#endif

extern volatile uint8_t    PetitReceiveBuffer[PETITMODBUS_RECEIVE_BUFFER_SIZE];
extern volatile uint8_t    PetitReceiveCounter;

extern void             PetitModBus_UART_Initialise(void);
extern void             PetitModBus_TIMER_Initialise(void);
extern void             PetitModBus_UART_Putch(uint8_t c);
extern uint8_t		PetitModBus_UART_String(uint8_t *s, uint32_t Length);

extern void             ReceiveInterrupt(uint8_t Data);
extern void             PetitModBus_TimerValues(void);

#endif