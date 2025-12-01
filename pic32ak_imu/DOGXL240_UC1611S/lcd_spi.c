//-----------------------------------------------------
//File: lcd_spi.c
//Auth: ELECTRONIC ASSEMBLY JM
//DATE: 05-13-2014
//-----------------------------------------------------



//---Includes---
#include "sfr_r825.h" //Port definitions for R8C25 microcontroller
#include "timer.h"    //Delay_ms function

#include "lcd_spi.h"
#include "font_6x8.h"


//--- module global varibles and functions ---
static void   SPI_put 		(unsigned char byte);



//-----------------------------------------------------
//Func: LCD_init()
//Desc: inits Display and SPI-interface
//-----------------------------------------------------
void LCD_init(unsigned char contrast, unsigned char view)
{
	unsigned char i;

//----------Microcontroller specific initialisation----------
//Please adopt to your system
	//Port init (dd -> datadirection register; 1 output, 0 input)
	SI = 1;
	ddSI = 1;
	SCLK = 1;
	ddSCLK = 1;
	CS = 1;
	ddCS = 1;
	CD = 1;
	ddCD = 1;
	RES = 1;
	ddRES = 1;

	//SPI mode: rising edge, MSB first, clock idle high
	u0mr = 0x01; //synchronous serial mode, internal clock, 1 stop bit, no parity
	u0c0 = 0x80; //f1, CMOS output, rising edge, MSB first
	u0c1 = 0x13; //enable trans, disable rec, dis cont rec
//	u0brg = 0x81; //baud: 1200 u0brg = (f/(BitRate x 16)-1; f= 20MHz/8 -->u0c0 f8
	u0brg = 0x0A; //baud: 115200 u0brg = (f/(BitRate x 16)-1; f= 20MHz/1 -->u0c0 f1


//----------Display specific initialisation----------
	//Perform a display reset
	RES = 0;
	Delay_ms(2);
	RES=1;
	Delay_ms(150);

	//init Display
	LCD_command(0xF1); //last COM electrode
	LCD_command(0x7F); //128-1 = 127
	LCD_command(0xF2); //Display start line
	LCD_command(0x00); //0
	LCD_command(0xF3); //Display end line
	LCD_command(0x7F); //0
	
	LCD_contrast(contrast);
	LCD_view(view);
	
	LCD_command(0xA3); //9.4K per second line rate
	LCD_command(0x25); //Set temp. comp. to -0.1%/°C
	LCD_command(0xA9); //Enable Display
	LCD_command(0xD1); //in Black and white mode

	LCD_clear();
}

//-----------------------------------------------------
//Func: LCD_contrast
//Desc: Sets contrast 0..255
//-----------------------------------------------------
void LCD_contrast(unsigned char contr)
{
	LCD_command(0x81); //Set Contrast
	LCD_command(contr); //Standard value
}

//-----------------------------------------------------
//Func: LCD_view
//Desc: view bottom view(0x02), top view (0x04)
//-----------------------------------------------------
void LCD_view(unsigned char view)
{
	LCD_command(0xC0);
	LCD_command(view);
}

//-----------------------------------------------------
//Func: LCD_position
//Desc: set column (0..239) and page (0..15) adress in display
//-----------------------------------------------------
void LCD_position(unsigned char column, unsigned char page)
{
	LCD_command(0x10 + (column>>4)); 	//MSB adress column
	LCD_command(0x00 + (column&0x0F));	//LSB adress column
	LCD_command(0x70); 					//MSB adress page
	LCD_command(0x60 + (page&0x0F)); 	//LSB adress page	
}

//-----------------------------------------------------
//Func: LCD_clear
//Desc: clear display ram
//-----------------------------------------------------
void LCD_clear (void)
{
	unsigned int i=240*16; //column * pages

	LCD_position(0,0);
	
	CD = 1;
	CS = 0;	
	while(i--)
		SPI_put(0x00);
	CS = 1;

}

//-----------------------------------------------------
//Func: LCD_string
//Desc: shows ascii character on screen
//-----------------------------------------------------
void LCD_string(unsigned char column, unsigned char page, unsigned char *str)
{
	unsigned int pos_array;
	
	LCD_position(column, page);
	
	while(*str != 0)
	{	
		//calculate positon of ascii character in font array
		//bytes for header + (ascii - startcode) * bytes pro char)
		pos_array = 8 + (unsigned int)(*str++ - font_6x8[2]) * font_6x8[7];
	
		LCD_data(&font_6x8[pos_array], font_6x8[4]); //Argument 1: Data to send; Argument 2: len = width of char
	}
}

//-----------------------------------------------------
//Func: LCD_command(instruction)
//Desc: sends instruction to display
//-----------------------------------------------------
void LCD_command(char cmd)
{
	CD = 0;
	CS = 0;
	SPI_put(cmd);
	CS = 1;
}

//-----------------------------------------------------
//Func: LCD_data(data)
//Desc: sends data to display
//-----------------------------------------------------
void LCD_data(char *data, unsigned int len)
{
	CD = 1;
	CS = 0;
	while(len--)
		SPI_put(*data++);
	CS = 1;
}

//-----------------------------------------------------
//Func: SPI_put()
//Desc: waits till data is sent over the spi interface
//-----------------------------------------------------
static void SPI_put (unsigned char byte)
{
	u0tb = byte;
	while(ti_u0c1 == 0);
	while(txept_u0c0 == 0);
}





