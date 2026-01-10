/*******************************************************************************
  Interface definition of WDT PLIB.

  Company:
    Microchip Technology Inc.

  File Name:
    plib_wdt.h

  Summary:
    Interface definition of the Watch Dog Timer Plib (WDT).

  Description:
    This file defines the interface for the WDT Plib.
    It allows user to setup timeout duration and restart watch dog timer.
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

#ifndef PLIB_WDT_H    // Guards against multiple inclusion
#define PLIB_WDT_H

// Section: Included Files

#include "device.h"
#include <stdbool.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// Section: Interface


/**
 * @brief     Checks if the Watchdog Timer is enabled.
 * @param     None
 * @return    bool - true if enabled, false if disabled.
 * This function returns true if the Watchdog Timer is enabled, false otherwise.
 */
bool WDT_IsEnabled( void );


/**
 * @brief     Checks if the window mode of the Watchdog Timer is enabled.
 * @param     None
 * @return    bool - true if window mode is enabled, false if disabled.
 * This function returns true if the window mode is enabled, false otherwise.
 */
bool WDT_IsWindowEnabled( void );

/**
 * @brief     Clears the Watchdog Timer.
 * @param     None
 * @pre       WDT must be enabled using WDT_Enable().
 * @return    None
 * This function resets the Watchdog Timer to prevent it from expiring.
 */
void WDT_Clear( void );

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END

#endif // PLIB_WDT_H
