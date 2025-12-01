/*  PetitModbus Version 1.0
 *  Author  :   Firat DEVECI
 *  Date    :   27.07.16
 *  
 *  Tips    :   If you want to use RS485 you have to use RX-Pull-Up Resistor!
 * updated for XC32 and half-duplex transfers
 */

#include <stdint.h>

#ifndef __PETITMODBUS__H
#define __PETITMODBUS__H

#define NUMBER_OF_OUTPUT_PETITREGISTERS                 16                      // Petit Modbus RTU Slave Output Register Number
// Have to put a number of registers here
// It has to be bigger than 0 (zero)!!
#define PETITMODBUS_TIMEOUTTIMER                        250                     // Timeout Constant for Petit Modbus RTU Slave [millisecond]

#define PETITMODBUS_READ_HOLDING_REGISTERS_ENABLED      ( 1 )                   // If you want to use make it 1, or 0
#define PETITMODBUSWRITE_SINGLE_REGISTER_ENABLED        ( 1 )                   // If you want to use make it 1, or 0
#define PETITMODBUS_WRITE_MULTIPLE_REGISTERS_ENABLED    ( 1 )                   // If you want to use make it 1, or 0

/****************************Don't Touch This**********************************/
// Buffers for Petit Modbus RTU Slave
#define PETITMODBUS_RECEIVE_BUFFER_SIZE                 (NUMBER_OF_OUTPUT_PETITREGISTERS*2 + 5) 
#define PETITMODBUS_TRANSMIT_BUFFER_SIZE                PETITMODBUS_RECEIVE_BUFFER_SIZE
#define PETITMODBUS_RXTX_BUFFER_SIZE                    PETITMODBUS_TRANSMIT_BUFFER_SIZE

// Variable for Slave Address
extern uint8_t PETITMODBUS_SLAVE_ADDRESS; // Petit Modbus RTU Slave address [0 to 255]

typedef struct {
	int16_t ActValue;
} PetitRegStructure;

extern PetitRegStructure PetitRegisters[NUMBER_OF_OUTPUT_PETITREGISTERS];
extern volatile uint16_t PetitModbusTimerValue;

// Main Functions
extern void InitPetitModbus(uint8_t PetitModbusSlaveAddress);
extern void ProcessPetitModbus(void);

// Petit Modbus Port Header
#include "PetitModbusPort.h"

#endif
