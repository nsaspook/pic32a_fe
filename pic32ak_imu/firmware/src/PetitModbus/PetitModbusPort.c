#include "../pmodbus.h"
#include "PetitModbus.h"
#include "PetitModbusPort.h"
#include "tests.h"

// This port file for PIC microcontrollers!
// for XC32 and half-duplex transfers using PIC32 Harmony USART drivers

// Modbus RTU Variables
volatile uint8_t PetitReceiveBuffer[PETITMODBUS_RECEIVE_BUFFER_SIZE]; // Buffer to collect data from hardware
volatile uint8_t PetitReceiveCounter = 0; // Collected data number
static void half_dup_tx(void);
static void half_dup_rx(void);

// UART Initialize for controller, yes you can use another physical layer!

void PetitModBus_UART_Initialise(void)
{
	// MHC
}

// Timer Initialize for Petit Modbus, 1ms Timer will be good for us!

void PetitModBus_TIMER_Initialise(void)
{
	// MHC
}

// This is used for send one character

void PetitModBus_UART_Putch(uint8_t c)
{
	UART6_Write(&c, 1);
	V.modbus_tx++; // stat collection
}

// switch RS transceiver to transmit mode and wait

static void half_dup_tx(void)
{
	DERE_Set(); // enable modbus transmitter
	delay_ms(5);
}

// switch RS transceiver to receive mode and wait

static void half_dup_rx(void)
{
	while (UART6_WriteCountGet()) {
	};
	delay_ms(5);
	DERE_Clear(); // enable modbus receiver	
}

// This is used for send string, better to use DMA for it ;)
// uses interrupt tx buffer on pic32 and handles half-duplex switching and timing

uint8_t PetitModBus_UART_String(uint8_t *s, uint32_t Length)
{
	uint16_t DummyCounter;

	half_dup_tx();
	for (DummyCounter = 0; DummyCounter < Length; DummyCounter++) {
		PetitModBus_UART_Putch(s[DummyCounter]);
	}
	half_dup_rx();

	return TRUE;
}

/*************************Interrupt Function Slave*****************************/
// Call this function into your UART Interrupt. Collect data from it!
// Better to use DMA

void ReceiveInterrupt(uint8_t Data)
{
	PetitReceiveBuffer[PetitReceiveCounter] = Data;
	PetitReceiveCounter++;

	if (PetitReceiveCounter > PETITMODBUS_RECEIVE_BUFFER_SIZE) {
		PetitReceiveCounter = 0;
	}

	PetitModbusTimerValue = 0;
	V.modbus_rx++; // stat collection
}

// Call this function into 1ms Interrupt or Event!

void PetitModBus_TimerValues(void)
{
	PetitModbusTimerValue++;
}
/******************************************************************************/
