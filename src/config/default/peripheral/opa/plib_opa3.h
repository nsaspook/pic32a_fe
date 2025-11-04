/*******************************************************************************
  OPA PLIB

  Company
    Microchip Technology Inc.

  File Name
  plib_opa3.h

  Summary
    OPA PLIB Header File.

  Description
    This file defines the interface to the OPAMP peripheral library.
    This library provides access to and control of the associated OPAMP.

  Remarks:
    None.

*******************************************************************************/
#ifndef PLIB_OPA3_H
#define PLIB_OPA3_H

// *****************************************************************************
// Section: Included Files
// *****************************************************************************

#include <stdbool.h>
#include <stddef.h>
#include "device.h"
#include "plib_opa_common.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

/**
 * @brief    Initializes the OPA3 module
 * @details  This function initializes the OPA3 module, setting it up for operation according to the predefined configuration.
 * @pre      This function should be called before any other OPA3 functions are used.
 * @param    None
 * @note     This function must be called only once and before any other OPA3 function is called.
 * @remarks  Ensure that the OPA3 module is properly configured before calling this function.
 * @return   None
 * 
 */
void OPA3_Initialize (void);

/**
 * @brief    Deinitializes the OPA3 module
 * @details  This function deinitializes the OPA3 module, resetting it to its default state and disabling its operation.
 * @pre      This function should be called to properly shut down the OPA3 module before system power-down or reconfiguration.
 * @param    None
 * @note     This function should be called to release any resources allocated by the OPA3 module.
 * @remarks  Ensure that any necessary cleanup or state saving is performed before calling this function.
 * @return   None
 * 
 */
void OPA3_Deinitialize(void);

/**
 * @brief    This inline function enables the OPA3 module
 * @details  This function sets the enable bit for the OPA3 module, allowing it to start operation.
 * @pre      The OPA3_Initialize function should be called for the specified OPA3 driver instance before calling this function.
 * @param    None
 * @note     Ensure that the OPA3 module is properly initialized before enabling it.
 * @remarks  This function directly sets the enable bit in the control register of the OPA3 module.
 * @return   None
 * 
 */
inline static void OPA3_Enable( void )
{
    AMP3CON1bits.AMPEN = 1U; 
}

/**
 * @brief    This inline function disables the OPA3 module
 * @details  This function clears the enable bit for the OPA3 module, stopping its operation.
 * @pre      The OPA3 module should be enabled and operational before calling this function.
 * @param    None
 * @note     Ensure that any necessary cleanup or state saving is performed before disabling the OPA3 module.
 * @remarks  None
 * @return   None
 * 
 */
inline static void OPA3_Disable( void )
{
    AMP3CON1bits.AMPEN = 0U; 
}

/**
 * @brief    This inline function enables or disables unity gain for the OPA3 module
 * @details  This function sets or clears the unity gain enable bit for the OPA3 module based on the input parameter.
 * @param[in]  enable - If true, enables unity gain; if false, disables unity gain.
 * @note     Ensure that the OPA3 module is properly initialized before configuring unity gain.
 * @remarks  None
 * @return   None
 * 
 */
inline static void OPA3_UnityGainEnable( bool enable )
{
    AMP3CON1bits.UGE = (uint8_t)enable;     
}

/**
 * @brief    This inline function enables or disables High Power Mode for the OPA3 module
 * @details  This function sets or clears the High Power Mode enable bit for the OPA3 module based on the input parameter.
 * @param[in]  enable - If true, enables High Power Mode; if false, disables High Power Mode.
 * @note     Ensure that the OPA3 module is properly initialized before configuring High Power Mode.
 * @remarks  None
 * @return   None
 * 
 */
inline static void OPA3_HighPowerModeEnable( bool enable )
{
    AMP3CON1bits.HPEN = (uint8_t)enable;     
}


/**
 * @brief      This inline function enables or disables the output of the OPA3 module to the ADC
 * @details    This function sets or clears the output monitor enable bit for the OPA3 module based on the input parameter.
 * @param[in]  enable - If true, enables the output monitor; if false, disables the output monitor.
 * @note       Ensure that the OPA3 module is properly initialized before configuring the output monitor.
 * @remarks    None
 * @return     None
 * 
 */
inline static void OPA3_OutputMonitorEnable( bool enable )
{
    AMP3CON1bits.OMONEN = (uint8_t)enable;     
}

/**
 * @brief      This inline function sets the differential input mode for the OPA3 module
 * @details    This function configures the differential input mode for the OPA3 module by setting the appropriate bits in the control register.
 * @param[in]  input - The selected differential input mode. This parameter should be of type OPA_DIFFERENTIAL_INPUT_MODE.
 * @note       Ensure that the OPA3 module is properly initialized before configuring the differential input mode.
 * @remarks    None
 * @return     None
 * 
 */
inline static void OPA3_DifferentialInputModeSet(OPA_DIFFERENTIAL_INPUT_MODE input)
{
    AMP3CON1bits.DIFFCON = (uint8_t)input;     
}

/**
 * @brief      This inline function enables/disables Enables output of OPA module to ADC
 * @param[in]  inputType   - selected differential input offset register type
 * @param[in]  unitVoltage - selected unit voltage
 * @return     None  
 * @Note       Unit voltage = trim step voltage 3 mV
 */
inline static void OPA3_OffsetCorrection(OPA_OFFSET_INPUT_TYPE inputType, OPA_OUTPUT_VOLTAGE_OFFSET_CORRECTION unitVoltage)
{
     switch(inputType)
    {
        case OPA_PMOS_OFFSET_IN_HIGH_POWER_MODE:
            AMP3CON2bits.POFFSETHP = (uint8_t)unitVoltage;
            break;
            
        case OPA_NMOS_OFFSET_IN_HIGH_POWER_MODE:
            AMP3CON2bits.NOFFSETLP = (uint8_t)unitVoltage;
            break;
            
        case OPA_PMOS_OFFSET_IN_LOW_POWER_MODE:
            AMP3CON2bits.POFFSETHP  = (uint8_t)unitVoltage;
            break;
            
        case OPA_NMOS_OFFSET_IN_LOW_POWER_MODE:
            AMP3CON2bits.NOFFSETLP  = (uint8_t)unitVoltage;
            break;
            
        default:
            /*Do Nothing*/
            break;
    }
}


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
#endif
// DOM-IGNORE-END