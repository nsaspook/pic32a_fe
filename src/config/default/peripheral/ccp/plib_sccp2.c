/*******************************************************************************
  CCP Peripheral Library Interface Source File

  Company
    Microchip Technology Inc.

  File Name
    plib_sccp2.c

  Summary
    SCCP2 peripheral library source file.

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
#include "plib_sccp2.h"
#include "interrupts.h"

static volatile CCP_TIMER_OBJECT sccp2Obj;


void SCCP2_TimerInitialize(void)
{
    /* Disable Timer */
    CCP2CON1 &= ~_CCP2CON1_ON_MASK;

    CCP2CON1 = 0x20;

    CCP2CON2 = 0x0;

    CCP2CON3 = 0x0;

    /* Clear counter */
    CCP2TMR = 0x0;

    /*Set period */
    CCP2PR = 0U;

    IEC1 |= _IEC1_CCT2IE_MASK;

}


void SCCP2_TimerStart(void)
{
    CCP2CON1 |= _CCP2CON1_ON_MASK;
}


void SCCP2_TimerStop (void)
{
    CCP2CON1 &= ~_CCP2CON1_ON_MASK;
}

void SCCP2_Timer32bitPeriodSet(uint32_t period)
{
    CCP2PR  = period;
}

uint32_t SCCP2_Timer32bitPeriodGet(void)
{
    return CCP2PR;
}

uint32_t SCCP2_Timer32bitCounterGet(void)
{
    return (CCP2TMR);
}


uint32_t SCCP2_TimerFrequencyGet(void)
{
    return (100000000);
}

void __attribute__((used)) CCT2_InterruptHandler (void)
{
    /* Additional local variable to prevent MISRA C violations (Rule 13.x) */
    uintptr_t context = sccp2Obj.context;
    uint32_t status = IFS1bits.CCT2IF;
    IFS1 &= ~_IFS1_CCT2IF_MASK;

    if((sccp2Obj.callback_fn != NULL))
    {
        sccp2Obj.callback_fn(status, context);
    }
}


void SCCP2_TimerInterruptEnable(void)
{

    IEC1 |= _IEC1_CCT2IE_MASK;
}


void SCCP2_TimerInterruptDisable(void)
{
    IEC1 &= ~_IEC1_CCT2IE_MASK;
}


void SCCP2_TimerCallbackRegister( CCP_TIMER_CALLBACK callback_fn, uintptr_t context )
{
    /* Save callback_fn and context in local memory */
    sccp2Obj.callback_fn = callback_fn;
    sccp2Obj.context = context;
}
