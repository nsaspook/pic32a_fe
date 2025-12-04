/*******************************************************************************
 System Interrupts File

  Company:
    Microchip Technology Inc.

  File Name:
    interrupt.c

  Summary:
    Interrupt vectors mapping

  Description:
    This file maps all the interrupt vectors to their corresponding
    implementations. If a particular module interrupt is used, then its ISR
    definition can be found in corresponding PLIB source file. If a module
    interrupt is not used, then its ISR implementation is mapped to dummy
    handler.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
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
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include "interrupts.h"
#include "definitions.h"



// *****************************************************************************
// *****************************************************************************
// Section: System Interrupt Vector Functions
// *****************************************************************************
// *****************************************************************************

/* All the handlers are defined here.  Each will call its PLIB-specific function. */
// Section: System Interrupt Vector declarations


void _T1Interrupt (void);
void _CCT1Interrupt (void);
void _CCT2Interrupt (void);
void _SPI1RXInterrupt (void);
void _SPI1TXInterrupt (void);
void _SPI1EInterrupt (void);
void _SPI2RXInterrupt (void);
void _SPI2TXInterrupt (void);
void _DMA0Interrupt (void);
void _DMA1Interrupt (void);
void _U1RXInterrupt (void);
void _U1TXInterrupt (void);
void _U1EInterrupt (void);
void _DMA5Interrupt (void);

// Section: System Interrupt Vector definitions

void __attribute__ (( interrupt, no_auto_psv)) _T1Interrupt (void)
{
    T1_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _CCT1Interrupt (void)
{
    CCT1_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv, context)) _CCT2Interrupt (void)
{
    CCT2_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _SPI1RXInterrupt (void)
{
    SPI1RX_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _SPI1TXInterrupt (void)
{
    SPI1TX_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _SPI1EInterrupt (void)
{
    SPI1E_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _SPI2RXInterrupt (void)
{
    SPI2RX_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _SPI2TXInterrupt (void)
{
    SPI2TX_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _DMA0Interrupt (void)
{
    DMA0_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _DMA1Interrupt (void)
{
    DMA1_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _U1RXInterrupt (void)
{
    U1RX_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _U1TXInterrupt (void)
{
    U1TX_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv)) _U1EInterrupt (void)
{
    U1E_InterruptHandler();
}

void __attribute__ (( interrupt, no_auto_psv, context)) _DMA5Interrupt (void)
{
    DMA5_InterruptHandler();
}




/*******************************************************************************
 End of File
*/
