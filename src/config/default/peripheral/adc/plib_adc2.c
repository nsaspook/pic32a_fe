/*******************************************************************************
  adc2 PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_adc2.c

  Summary:
    adc2 PLIB Source File

  Description:
    None

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

// Section: Included Files

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "device.h"
#include "interrupts.h"
#include "plib_adc_common.h"
#include "plib_adc2.h"

// Section: Macro Definitions

//ADC AD2CON MODE options
#define AD2CON_MODE_POWERED_DOWN          ((uint32_t)(_AD2CON_MODE_MASK & ((uint32_t)(0) << _AD2CON_MODE_POSITION)))
#define AD2CON_MODE_STANDBY          ((uint32_t)(_AD2CON_MODE_MASK & ((uint32_t)(1) << _AD2CON_MODE_POSITION)))
#define AD2CON_MODE_ON          ((uint32_t)(_AD2CON_MODE_MASK & ((uint32_t)(2) << _AD2CON_MODE_POSITION)))

//ADC AD2CON RPTCNT set
#define AD2CON_RPTCNT_SET(value)              ((uint32_t)(_AD2CON_RPTCNT_MASK & ((uint32_t)(value) << _AD2CON_RPTCNT_POSITION)))

//ADC AD2CH4CON MODE options
#define AD2CH4CON_MODE_SINGLE_SAMPLE          ((uint32_t)(_AD2CH4CON_MODE_MASK & ((uint32_t)(0) << _AD2CH4CON_MODE_POSITION)))
#define AD2CH4CON_MODE_WINDOW          ((uint32_t)(_AD2CH4CON_MODE_MASK & ((uint32_t)(1) << _AD2CH4CON_MODE_POSITION)))
#define AD2CH4CON_MODE_INTEGRATION          ((uint32_t)(_AD2CH4CON_MODE_MASK & ((uint32_t)(2) << _AD2CH4CON_MODE_POSITION)))
#define AD2CH4CON_MODE_OVERSAMPLING          ((uint32_t)(_AD2CH4CON_MODE_MASK & ((uint32_t)(3) << _AD2CH4CON_MODE_POSITION)))

//ADC AD2CH4CON ACCNUM options
#define AD2CH4CON_ACCNUM_4_SAMPLES          ((uint32_t)(_AD2CH4CON_ACCNUM_MASK & ((uint32_t)(0) << _AD2CH4CON_ACCNUM_POSITION)))
#define AD2CH4CON_ACCNUM_16_SAMPLES          ((uint32_t)(_AD2CH4CON_ACCNUM_MASK & ((uint32_t)(1) << _AD2CH4CON_ACCNUM_POSITION)))
#define AD2CH4CON_ACCNUM_64_SAMPLES          ((uint32_t)(_AD2CH4CON_ACCNUM_MASK & ((uint32_t)(2) << _AD2CH4CON_ACCNUM_POSITION)))
#define AD2CH4CON_ACCNUM_256_SAMPLES          ((uint32_t)(_AD2CH4CON_ACCNUM_MASK & ((uint32_t)(3) << _AD2CH4CON_ACCNUM_POSITION)))

//ADC AD2CH4CON TRG2SRC set
#define AD2CH4CON_TRG2SRC_SET(value)              ((uint32_t)(_AD2CH4CON_TRG2SRC_MASK & ((uint32_t)(value) << _AD2CH4CON_TRG2SRC_POSITION)))

//ADC AD2CH4CON CMPMOD options
#define AD2CH4CON_CMPMOD_DISABLED          ((uint32_t)(_AD2CH4CON_CMPMOD_MASK & ((uint32_t)(0) << _AD2CH4CON_CMPMOD_POSITION)))
#define AD2CH4CON_CMPMOD_OUT_OF_BOUNDS          ((uint32_t)(_AD2CH4CON_CMPMOD_MASK & ((uint32_t)(1) << _AD2CH4CON_CMPMOD_POSITION)))
#define AD2CH4CON_CMPMOD_IN_BOUNDS          ((uint32_t)(_AD2CH4CON_CMPMOD_MASK & ((uint32_t)(2) << _AD2CH4CON_CMPMOD_POSITION)))
#define AD2CH4CON_CMPMOD_GRATER_THAN          ((uint32_t)(_AD2CH4CON_CMPMOD_MASK & ((uint32_t)(3) << _AD2CH4CON_CMPMOD_POSITION)))
#define AD2CH4CON_CMPMOD_LESS_THAN_OR_EQUAL          ((uint32_t)(_AD2CH4CON_CMPMOD_MASK & ((uint32_t)(4) << _AD2CH4CON_CMPMOD_POSITION)))

//ADC AD2CH4CON PINSEL set
#define AD2CH4CON_PINSEL_SET(value)              ((uint32_t)(_AD2CH4CON_PINSEL_MASK & ((uint32_t)(value) << _AD2CH4CON_PINSEL_POSITION)))

//ADC AD2CH4CON NINSEL set
#define AD2CH4CON_NINSEL_SET(value)              ((uint32_t)(_AD2CH4CON_NINSEL_MASK & ((uint32_t)(value) << _AD2CH4CON_NINSEL_POSITION)))

//ADC AD2CH4CON SAMC set
#define AD2CH4CON_SAMC_SET(value)              ((uint32_t)(_AD2CH4CON_SAMC_MASK & ((uint32_t)(value) << _AD2CH4CON_SAMC_POSITION)))

//ADC AD2CH4CON TRG1SRC set
#define AD2CH4CON_TRG1SRC_SET(value)              ((uint32_t)(_AD2CH4CON_TRG1SRC_MASK & ((uint32_t)(value) << _AD2CH4CON_TRG1SRC_POSITION)))

//ADC AD2CH4CNT CNT set
#define AD2CH4CNT_CNT_SET(value)              ((uint32_t)(_AD2CH4CNT_CNT_MASK & ((uint32_t)(value) << _AD2CH4CNT_CNT_POSITION)))


// Section: File specific functions

static volatile ADC_CHANNEL_OBJECT adc2ChannelObj[20];
static volatile ADC_CMP_OBJECT adc2CmpObj[20];


typedef enum {
    PWM1_TRIGGER1 = 4,
    PWM1_TRIGGER2 = 5,
    PWM2_TRIGGER1 = 6,
    PWM2_TRIGGER2 = 7,
    PWM3_TRIGGER1 = 8,
    PWM3_TRIGGER2 = 9,
    PWM4_TRIGGER1 = 10,
    PWM4_TRIGGER2 = 11,
}ADC2_PWM_TRIGGERS;

static uint16_t ADC2_TriggerSourceValueGet(ADC2_PWM_INSTANCE pwmInstance, ADC_PWM_TRIGGERS triggerNumber);

// Section: ADC2 Implementation

void ADC2_Initialize(void)
{
    AD2CON = AD2CON_RPTCNT_SET(18);
    //Clear CMP status
    AD2CMPSTAT = 0x0U;

    AD2CH4CON = (AD2CH4CON_MODE_SINGLE_SAMPLE
                            |AD2CH4CON_ACCNUM_4_SAMPLES
                            |AD2CH4CON_TRG2SRC_SET(0)
                            |AD2CH4CON_CMPMOD_DISABLED
                            |AD2CH4CON_PINSEL_SET(7)
                            |AD2CH4CON_NINSEL_SET(0)
                            |AD2CH4CON_SAMC_SET(0)
                            |AD2CH4CON_TRG1SRC_SET(1));
    AD2CH4CNT = AD2CH4CNT_CNT_SET(0);
    AD2CH4CMPLO = 0X0UL;
    AD2CH4CMPHI = 0X0UL;


    //Mode change to run mode and enable ADC
    AD2CON |= (AD2CON_MODE_ON | _AD2CON_ON_MASK);
    while(AD2CONbits.ADRDY == 0U){};
}

void ADC2_Deinitialize(void)
{
    uint32_t  __attribute__ ((unused)) dummy;

    ADC2_Disable();

    dummy = AD2CH4DATA;
    (void)dummy;
    _AD2CH4IF = 0U;
    _AD2CH4IE = 0U;

    AD2CON = 0x4A0000UL;
    AD2DATAOVR = 0x0UL;
    AD2STAT = 0x0UL;
    AD2CMPSTAT = 0x0UL;
    AD2CH4CON = 0x0UL;
    AD2CH4DATA = 0x0UL;
    AD2CH4CNT = 0x0UL;
    AD2CH4CMPLO = 0x0UL;
    AD2CH4CMPHI = 0x0UL;


}

static uint16_t ADC2_TriggerSourceValueGet(ADC2_PWM_INSTANCE pwmInstance, ADC_PWM_TRIGGERS triggerNumber)
{
    uint16_t adcTriggerSourceValue = 0x0U;
    switch(pwmInstance)
    {
        case ADC2_PWM4:
                if(triggerNumber == ADC_PWM_TRIGGER_1)
                {
                    adcTriggerSourceValue = (uint16_t)PWM4_TRIGGER1;
                }
                else if(triggerNumber == ADC_PWM_TRIGGER_2)
                {
                    adcTriggerSourceValue = (uint16_t)PWM4_TRIGGER2;
                }
                else
                {
                    /*Do Nothing*/
                }
                break;
         default:
                /*Do Nothing*/
                break;
    }
    return adcTriggerSourceValue;
}

void ADC2_PWMTriggerSourceSet(ADC2_CHANNEL channel, ADC2_PWM_INSTANCE pwmInstance, ADC_PWM_TRIGGERS triggerNumber)
{
    uint16_t adcTriggerValue;
    adcTriggerValue= ADC2_TriggerSourceValueGet(pwmInstance, triggerNumber);
    switch(channel)
    {
        case ADC2_CHANNEL4:
                AD2CH4CONbits.TRG1SRC = (uint8_t)adcTriggerValue;
                break;
        default:
                /*Do Nothing*/
                break;
    }
}

void ADC2_ChannelCallbackRegister(ADC2_CHANNEL channel,ADC_CHANNEL_CALLBACK callback,uintptr_t context)
{
    adc2ChannelObj[channel].callback = callback;
    adc2ChannelObj[channel].context = context;
}



