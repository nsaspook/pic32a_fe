//-----------------------------------------------------
//File: main.c
//Auth: ELECTRONIC ASSEMBLY JM
//DATE: 08-28-2013
//-----------------------------------------------------

/*used microcontroller:
Renesas R8C25 with 20MHz external clock to DOGXL240-7 (UC1611C)
UC1611S EA DOGXL240-7 (240x128 dots)
Connection 4 Wire 8-Bit SPI Mode
Display is initialized, cleared and a short String is shown.
CD-Line is idle high -> write data; to send commands set this line to low

uC-Pin		Disp-Pin	Function
10 (VSS)	 32		  	GND
12 (VCC)	 31		  	VDD (3.3V)
24 (p1_4)	 39		 	SI
23 (p1_6)	 40	 	 	CLK
 3 (p3_3)	 ---  		CS
37 (p6_3)	 44		  	CD
23 (p1_5)	 38	 	 	RES

*/

//---Includes---
#include "sfr_r825.h"

#include "main.h"
#include "timer.h"
#include "lcd_spi.h"

//definitions


//--- module global varibles ---

//-----------------------------------------------------
//Func: main()
//Desc: main function with main loop, show a sample screen
//-----------------------------------------------------
void main(void)
{
	unsigned char len, data;
	externClock();
	initTimerRA();
	asm("FSET I");	//Interrupt enable

	
	LCD_init(0x8F, BOTTOMVIEW); 	//init display with contrast 0x8F standard value
	
	LCD_string(63,0,"ELECTRONIC ASSEMBLY");
	LCD_string(0,2,"EA DOGXL240-7");
	LCD_string(0,3,"- 240x128 dots");
	LCD_string(0,4,"- Controller UC1611S");
	LCD_string(0,5,"- 3.3V single supply");
	LCD_string(0,6,"- serial interfaces SPI and I2C");
	
	LCD_string(0,11,"ELECTRONIC ASSEMBLY");
	LCD_string(0,12,"Zeppelinstr. 19");
	LCD_string(0,13,"88205 Gilching");
	LCD_string(0,14,"Tel:    +49(0)8105/77 80 90");
	LCD_string(0,15,"E-Mail: technik@lcd-module.de");

	
	while(1)
	{
		
	}

}

//-----------------------------------------------------
//Func: externClock()
//Desc: switch to external clock no devision (20MHz)
//-----------------------------------------------------
void externClock (void)
{
	asm("FCLR I");	//Interrupt disable

	prcr = 1;		//Protect off

	cm13 = 1;		//Xin Xout
	cm15 = 1;		//XCIN-XCOUT drive capacity select bit : HIGH
	cm05 = 0;		//Xin on
	cm16 = 0;		//Main clock = No division mode 20MHz
	cm17 = 0;		//Main clock = No division mode
	cm06 = 0;		//CM16 and CM17 enable

	//Waitting for stable of oscillation
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");

	ocd2 = 0;		//Main clock change

	prcr = 0;		//Protect on
}