/**
 * OPAMP Generated PLIB Types Header File
 * 
 * @file      plib_opa_common.h          
 *            
 * @brief     Operational Amplifier PLIB using dsPIC MCUs
 *
 * @skipline  Harmony Chip support Package Version  {core.libVersion}
 *            
 * @skipline  Device : {core.deviceName}
*/


//{core.disclaimer}

#ifndef PLIB_OPA_COMMON_H
#define PLIB_OPA_COMMON_H

/* Provide C++ Compatibility */
#ifdef __cplusplus

    extern "C" {

#endif

/**
 * @summary     OPA Differential Input Mode Enums
 * @brief     Enumeration for selecting the differential input mode of the OPA module.
 * @remarks   None
 */
typedef enum
{ 
    OPA_DIFFERENTIAL_INPUT_NMOS_PMOS_PAIR   = 0,    /**< Use both NMOS and PMOS differential input pair */
    OPA_DIFFERENTIAL_INPUT_NMOS_INPUT_PAIR  = 1,    /**< Turn NMOS differntial input pair ON and turn PMOS differential input pair off */
    OPA_DIFFERENTIAL_INPUT_PMOS_INPUT_PAIR  = 2,    /**< Turn PMOS differntial input pair ON and turn NMOS differential input pair off */
    OPA_DIFFERENTIAL_INPUT_NONE             = 3     /**< No differential input pair selected */

}  OPA_DIFFERENTIAL_INPUT_MODE; 

/**
 * @summary      OPA Offset Event Enums
 * @brief     Enum for selecting the output voltage offset correction in the OPA module.
 * @remarks   None
 */
typedef enum
{
    OPA_PMOS_OFFSET_IN_HIGH_POWER_MODE,     /**< Offset Correction for PMOS Differential Input Pair (High-Power mode) */
    OPA_NMOS_OFFSET_IN_HIGH_POWER_MODE,     /**< Offset Correction for NMOS Differential Input Pair (High-Power mode) */
    OPA_PMOS_OFFSET_IN_LOW_POWER_MODE,      /**< Offset Correction for PMOS Differential Input Pair (Low-Power mode) */
    OPA_NMOS_OFFSET_IN_LOW_POWER_MODE       /**< Offset Correction for NMOS Differential Input Pair (Low-Power mode) */

} OPA_OFFSET_INPUT_TYPE;

/**
 * @summary      OPA Offset Correction Enums
 * @brief     Enumeration for selecting the output voltage offset correction for the OPA module.
 * @remarks   None
 */
typedef enum
{

   DECREASE_15_UNIT_VOLTAGE = 0xf,
DECREASE_14_UNIT_VOLTAGE = 0xe,
DECREASE_13_UNIT_VOLTAGE = 0xd,
DECREASE_12_UNIT_VOLTAGE = 0xc,
DECREASE_11_UNIT_VOLTAGE = 0xb,
DECREASE_10_UNIT_VOLTAGE = 0xa,
DECREASE_9_UNIT_VOLTAGE = 0x9,
DECREASE_8_UNIT_VOLTAGE = 0x8,
DECREASE_7_UNIT_VOLTAGE = 0x7,
DECREASE_6_UNIT_VOLTAGE = 0x6,
DECREASE_5_UNIT_VOLTAGE = 0x5,
DECREASE_4_UNIT_VOLTAGE = 0x4,
DECREASE_3_UNIT_VOLTAGE = 0x3,
DECREASE_2_UNIT_VOLTAGE = 0x2,
DECREASE_1_UNIT_VOLTAGE = 0x1,
NO_CORRECTION = 0x0,
INCREASE_1_UNIT_VOLTAGE = 0x1e,
INCREASE_2_UNIT_VOLTAGE = 0x1d,
INCREASE_3_UNIT_VOLTAGE = 0x1c,
INCREASE_4_UNIT_VOLTAGE = 0x1b,
INCREASE_5_UNIT_VOLTAGE = 0x1a,
INCREASE_6_UNIT_VOLTAGE = 0x19,
INCREASE_7_UNIT_VOLTAGE = 0x18,
INCREASE_8_UNIT_VOLTAGE = 0x17,
INCREASE_9_UNIT_VOLTAGE = 0x16,
INCREASE_10_UNIT_VOLTAGE = 0x15,
INCREASE_11_UNIT_VOLTAGE = 0x14,
INCREASE_12_UNIT_VOLTAGE = 0x13,
INCREASE_13_UNIT_VOLTAGE = 0x12,
INCREASE_14_UNIT_VOLTAGE = 0x11,
INCREASE_15_UNIT_VOLTAGE = 0x10,

} OPA_OUTPUT_VOLTAGE_OFFSET_CORRECTION;

/* Provide C++ Compatibility */
#ifdef __cplusplus

    }

#endif

#endif // PLIB_OPA_COMMON_H