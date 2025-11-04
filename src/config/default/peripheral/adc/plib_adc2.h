/*******************************************************************************
  adc2 PLIB
 
  Company:
    Microchip Technology Inc.
 
  File Name:
    plib_adc2.h
 
  Summary:
    adc2 PLIB Header File
 
  Description:
    This file has prototype of all the interfaces provided for particular
    adc2 peripheral.
 
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

#ifndef PLIB_ADC2_H
#define PLIB_ADC2_H

// Section: Included Files

#include <xc.h>
#include <stdbool.h>
#include <stdint.h>
#include "plib_adc_common.h"

// /cond IGNORE_THIS
/* Provide C++ Compatibility */
#ifdef __cplusplus

    extern "C" {

#endif
// /endcond

// Section: Data Types

/**
 @enum     ADC2_CHANNEL
 @brief    Defines the ADC channles that are selected
*/
typedef enum
{
    ADC2_CHANNEL1 = 1U,   
    ADC2_MAX_CHANNELS = 1
} ADC2_CHANNEL;

/**
 @enum     ADC_PWM_INSTANCE
 @brief    Defines the ADC PWM trigger sources that are 
           available for the module to use.
*/
typedef enum 
{
    ADC2_PWM1 = 1,
    ADC2_PWM2 = 2,
    ADC2_PWM3 = 3,
    ADC2_PWM4 = 4,
} ADC2_PWM_INSTANCE;


// Section: Driver Interface Functions

/**
 * @brief    Initializes ADC2 module, using the given initialization data
 *           This function must be called before any other ADC2 function is called
 * @param    none
 * @return   none  
 */
void ADC2_Initialize (void);

/**
 * @brief    Deinitializes the ADC2 to POR values
 * @param    none
 * @return   none  
 */
void ADC2_Deinitialize(void);

/**
 * @brief    This inline function enables the ADC2 module
 * @pre      none
 * @param    none
 * @return   none  
 */
inline static void ADC2_Enable(void)
{
    AD2CONbits.ON = 1;
    AD2CONbits.MODE = 1;
    while(AD2CONbits.ADRDY == 0U){};
}

/**
 * @brief    This inline function disables the ADC2 module
 * @pre      none
 * @param    none
 * @return   none  
 */
inline static void ADC2_Disable(void)
{
   AD2CONbits.ON = 0;
}

/**
 * @brief    This inline function sets software common trigger
 * @pre      none
 * @param    none
 * @return   none  
 */
inline static void ADC2_SoftwareTriggerEnable(void)
{
   AD2SWTRG = 0xFFFFFFFFU;
}

/**
 * @brief       This inline function sets individual software trigger
 * @pre         none
 * @param[in]   channel - Channel for conversion
 * @return      none  
 */
inline static void ADC2_ChannelSoftwareTriggerEnable(ADC2_CHANNEL channel)
{
    switch(channel)
    {
        case ADC2_CHANNEL1:
                AD2SWTRGbits.CH1TRG = 0x1U;
                break;
        default:
                /*Do Nothing*/
                break;
    }
}

/**
 * @brief      Returns the conversion value for the channel selected
 * @pre        This inline function returns the conversion value only after the conversion is complete. 
 *             Conversion completion status can be checked using 
 *             \ref ADC2_IsConversionComplete(channel) function.
 * @param[in]  channel - Selected channel  
 * @return     Returns the analog to digital converted value  
 */
inline static uint32_t ADC2_ChannelResultGet(ADC2_CHANNEL channel)
{
    uint32_t result = 0x0U;

    switch(channel)
    {
        case ADC2_CHANNEL1:
                result = AD2CH1DATA;
                break;
        default:
                /*Do Nothing*/
                break;
    }
    return result;
}

/**
 * @brief      This inline function returns the status of conversion.This function is used to 
 *             determine if conversion is completed. When conversion is complete 
 *             the function returns true otherwise false.
 * @pre        \ref ADC2_SoftwareTriggerEnable() function should have been 
 *             called before calling this function.
 * @param[in]  channel - Selected channel  
 * @return     true - Conversion is complete.
 * @return     false - Conversion is not complete.  
 */
inline static bool ADC2_ChannelResultIsReady(ADC2_CHANNEL channel)
{
    bool status = false;

    switch(channel)
    {
        case ADC2_CHANNEL1:
                status = AD2STATbits.CH1RDY == 1U;
                break;
        default:
                /*Do Nothing*/
                break;
    }
    return status;
}

/**
 * @brief      This inline function enables individual channel interrupt
 * @param[in]  channel - Selected channel  
 * @return     none  
 */
inline static void ADC2_ChannelResultInterruptEnable(ADC2_CHANNEL channel)
{
    switch(channel)
    {
        case ADC2_CHANNEL1:
                IEC5bits.AD2CH1IE = 1;
                break;
        default:
                /*Do Nothing*/
                break;
    }
}

/**
 * @brief      This inline function disables individual channel interrupt
 * @param[in]  channel - Selected channel  
 * @return     none  
 */
inline static void ADC2_ChannelResultInterruptDisable(ADC2_CHANNEL channel)
{
    switch(channel)
    {
        case ADC2_CHANNEL1:
                IEC5bits.AD2CH1IE = 0;
                break;
        default:
                /*Do Nothing*/
                break;
    }
}

/**
 * @brief      This inline function clears individual channel interrupt flag
 * @pre        The flag is not cleared without reading the data from buffer.
 *             Hence call \ref ADC2_ConversionResultGet() function to read data 
 *             before calling this function
 * @param[in]  channel - Selected channel  
 * @return     none  
 */
inline static void ADC2_ChannelResultFlagClear(ADC2_CHANNEL channel)
{
    switch(channel)
    {
        case ADC2_CHANNEL1:
                IFS5bits.AD2CH1IF = 0;
                break;
        default:
                /*Do Nothing*/
                break;
    }
}

/**
 * @brief      This inline function returns the status of the comparator
 * @pre        none
 * @param[in]  channel - Selected channel  
 * @return     compare status  
 */
inline static bool ADC2_CompareStatusGet(ADC2_CHANNEL channel)
{
    bool status = false;
    switch(channel)
    {
        case ADC2_CHANNEL1:
                status = AD2CMPSTATbits.CH1CMP == 1U;
                //Clear status flag
                AD2CMPSTATbits.CH1CMP = 0U;
                //clear the CMP 1 interrupt flag
                IFS5bits.AD2CMP1IF = 0U;
                break;
        default:
                /*Do Nothing*/
                break;
    }
    return status;
}

/**
 * @brief      This inline function allows selection of priority for individual channel interrupt
 * @param[in]  channel - Selected channel 
 * @param[in]  priorityValue  -  The numerical value of interrupt priority
 * @return     none  
 */
inline static void ADC2_IndividualChannelInterruptPrioritySet(ADC2_CHANNEL channel, INTERRUPT_PRIORITY priorityValue)
{
	switch(channel)
	{
		case ADC2_CHANNEL1:
				_AD2CH1IP = (uint8_t)priorityValue;
				break;
		default:
                /*Do Nothing*/
				break;
	}
}

/**
 * @brief      This function can be used to define custom callback for ADC2 Channel event. 
 *             Read the conversion result of the corresponding channel in the custom callback.
 * @pre        none
 * @param[in]  channel - Selected channel.  
 * @param[in]  callback - Address of the channel callback function.  
 * @param[in]  context - A value (usually a pointer) passed (unused) into the function identified by the callback parameter.  
 * @return     none  
 */
void ADC2_ChannelCallbackRegister(ADC2_CHANNEL channel,ADC_CHANNEL_CALLBACK callback,uintptr_t context);


/**
 * @brief    Sets Trigger source as PWM Trigger 
 * @pre      PWM must be enabled and configured 
 * @param[in]  channel - Selected channel. 
 * @param[in]  pwmInstance - Instance of PWM. Refer Datasheet for available PWMs as trigger source
 * @param[in]  triggerNumber - Selection between Trigger 1 or Trigger 2 
 * @return   none  
 */
void ADC2_PWMTriggerSourceSet(ADC2_CHANNEL channel, ADC2_PWM_INSTANCE pwmInstance, ADC_PWM_TRIGGERS triggerNumber);

#endif //PLIB_ADC2_H
    
/**
 End of File
*/

