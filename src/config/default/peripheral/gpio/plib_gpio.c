/*******************************************************************************
  GPIO PLIB
 
  Company:
    Microchip Technology Inc.
 
  File Name:
    plib_gpio.h
 
  Summary:
    GPIO PLIB Header File
 
  Description:
    This file has prototype of all the interfaces provided for particular
    gpio peripheral.
 
*******************************************************************************/
/*******************************************************************************
* Copyright (C) 2025 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

#include "plib_gpio.h"
#include "interrupts.h"
/**
* @brief   Offset value between registers LAT, TRIS, PORT 
*/
#define OFFSET_REG (uint32_t)0x14UL 

/**
* @brief  Offset value between two interrupt registers CNEN0, CNEN1, CNCON
*/
#define OFFSET_INT (uint32_t)0x24UL 
 
/**
* @brief   Macro to lock registers for PPS configuration.
*/
#define PINS_PPSLock()           (RPCONbits.IOLOCK = 1)

/**
* @brief   Macro to unlock registers for PPS configuration.
*/
#define PINS_PPSUnlock()         (RPCONbits.IOLOCK = 0)



void GPIO_Initialize ( void )
{
     /*PORTB Initialization */
    LATB = 0x10U; /* Initial Latch Value */
    CNPUB= 0x810U; /* Pull-Up Enable */
    TRISB = 0xfefU; /* Direction Control */
    ANSELB= 0x3efU; /* Digital Mode Enable */
     /*PORTC Initialization */
    LATC = 0x5U; /* Initial Latch Value */
    CNPUC= 0x105U; /* Pull-Up Enable */
    TRISC = 0xffaU; /* Direction Control */
     /*PORTD Initialization */
    LATD = 0x800U; /* Initial Latch Value */
    CNPUD= 0x800U; /* Pull-Up Enable */
    TRISD = 0x15feU; /* Direction Control */

    /* Unlock system for PPS configuration */
    PINS_PPSUnlock();

 /* PPS Input Mapping */
    RPINR10bits.SCK1R = 61;
    RPINR10bits.SDI1R = 41;
    RPINR11bits.SCK2R = 27;
    RPINR11bits.SDI2R = 28;

 /* PPS Output Mapping */
    RPOR15bits.RP61R = 14;
    RPOR14bits.RP59R = 13;
    RPOR6bits.RP27R = 14;
    RPOR6bits.RP27R = 17;
    RPOR10bits.RP42R = 16;

    /* Lock back the system after PPS configuration */
    PINS_PPSLock();
        

}

// Section: GPIO APIs which operates on multiple pins of a port

uint32_t  GPIO_PortRead(GPIO_PORT port)
{
    return (*(volatile uint32_t *)((uint32_t)&PORTA + (port * OFFSET_REG)));
}

void  GPIO_PortWrite(GPIO_PORT port, uint32_t mask, uint32_t value)
{
    *(volatile uint32_t *)((uint32_t)&LATA + (port * OFFSET_REG)) = (*(volatile uint32_t *)((uint32_t)&LATA + (port * OFFSET_REG)) & (~mask)) | (mask & value);
}

uint32_t  GPIO_PortLatchRead(GPIO_PORT port)
{
    return (*(volatile uint32_t *)((uint32_t)&LATA + (port * OFFSET_REG)));
}

void  GPIO_PortSet(GPIO_PORT port, uint32_t mask)
{
	*(volatile uint32_t *)((uint32_t)&LATA +(port * OFFSET_REG)) |= mask;
}

void  GPIO_PortClear(GPIO_PORT port, uint32_t mask)
{
	*(volatile uint32_t *)((uint32_t)&LATA + (port * OFFSET_REG)) &= ~mask;
}

void  GPIO_PortToggle(GPIO_PORT port, uint32_t mask)
{
	*(volatile uint32_t *)((uint32_t)&LATA +(port * OFFSET_REG)) ^= mask;
}

void  GPIO_PortInputEnable(GPIO_PORT port, uint32_t mask)
{
	*(volatile uint32_t *)((uint32_t)&TRISA +(port * OFFSET_REG)) |= mask;
}

void  GPIO_PortOutputEnable(GPIO_PORT port, uint32_t mask)
{
	*(volatile uint32_t *)((uint32_t)&TRISA + (port * OFFSET_REG)) &= ~mask;
}



/*******************************************************************************
 End of File
*/
