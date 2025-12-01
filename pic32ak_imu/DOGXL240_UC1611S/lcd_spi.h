//-----------------------------------------------------
//File: lcd_spi.h
//Auth: ELECTRONIC ASSEMBLY JM
//DATE: 05-13-2014
//-----------------------------------------------------
#ifndef LCDSPI_H
#define LCDSPI_H


//--- Port definitions ---
#define SI		p1_4
#define ddSI	pd1_4
#define SCLK	p1_6
#define ddSCLK	pd1_6
#define CS		p3_3
#define ddCS	pd3_3
#define CD		p6_3
#define ddCD	pd6_3
#define RES		p1_5
#define ddRES	pd1_5


//--- Standard definitions for LCD UC1611S---
#define TOPVIEW		0x04
#define BOTTOMVIEW	0x02
	

void LCD_init(unsigned char contrast, unsigned char view);

void LCD_contrast	(unsigned char contr);
void LCD_view		(unsigned char view);

void LCD_position(unsigned char column, unsigned char page);
void LCD_clear	(void);
void LCD_string	(unsigned char column, unsigned char page, unsigned char *str);

void LCD_command	(char cmd);
void LCD_data		(char *data, unsigned int len);

#endif