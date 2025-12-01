#include "tests.h"

bool run_tests(uint32_t count)
{
	static uint32_t running = 0;

	if (running++ >= count) {
		running = 0;
		spi_tests();
		uart_tests();
		return true;
	}
	return false;
}

bool spi_tests(void)
{
	while (SPI3_IsBusy()) {
	};
	SPI_EN0_Clear();
	SPI3_Write(" Tests 0", 8);
	SPI_EN0_Set();

	while (SPI3_IsBusy()) {
	};
	SPI_EN1_Clear();
	SPI3_Write(" Tests 1", 8);
	SPI_EN1_Set();

	return true;
}

bool uart_tests(void)
{
	DERE_Set(); // set RS485 port to transmit
	/*
	 * RS485 port
	 * NO ring buffer
	 */
	//	while (UART6_WriteFreeBufferCountGet() < 10);
	UART6_Write((uint8_t*) " Tests 6 1", 10);
	UART6_Write((uint8_t*) " Tests 6 2", 10);

	while (UART2_WriteFreeBufferCountGet() < 10) {
	};
	UART2_Write((uint8_t*) " Tests 2", 8);

	while (UART3_WriteFreeBufferCountGet() < 10) {
	};
	UART3_Write((uint8_t*) " Tests 3", 8);

	while (UART2_WriteCountGet() > 0) {
	}; // wait until bytes are gone in the buffer

	wdtdelay(700); // RS485 switch-back delay
	DERE_Clear(); // RS485 buss back to receive

	return true;
}
