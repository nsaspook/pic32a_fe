/*******************************************************************************
  CCP Peripheral Library Interface Source File

  Company
    Microchip Technology Inc.

  File Name
    plib_sccp1.c

  Summary
    SCCP1 peripheral library source file.

  Description
    This file implements the interface to the CCP peripheral library.  This
    library provides access to and control of the associated peripheral
    instance.

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

#include "device.h"
#include "plib_sccp1.h"
#include "interrupts.h"



void SCCP1_TimerInitialize(void)
{
    /* Disable Timer */
    CCP1CON1 &= ~_CCP1CON1_ON_MASK;

    CCP1CON1 = 0x9f0020;

    CCP1CON2 = 0x0;

    CCP1CON3 = 0x0;

    /* Clear counter */
    CCP1TMR = 0x0;

    /*Set period */
    CCP1PR = 9U;


}


void SCCP1_TimerStart(void)
{
    CCP1CON1 |= _CCP1CON1_ON_MASK;
}


void SCCP1_TimerStop (void)
{
    CCP1CON1 &= ~_CCP1CON1_ON_MASK;
}

void SCCP1_Timer32bitPeriodSet(uint32_t period)
{
    CCP1PR  = period;
}

uint32_t SCCP1_Timer32bitPeriodGet(void)
{
    return CCP1PR;
}

uint32_t SCCP1_Timer32bitCounterGet(void)
{
    return (CCP1TMR);
}


uint32_t SCCP1_TimerFrequencyGet(void)
{
    return (100000000);
}

