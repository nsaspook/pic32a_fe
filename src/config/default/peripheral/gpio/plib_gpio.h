/*******************************************************************************
  GPIO PLIB
 
  Company:
    Microchip Technology Inc.
 
  File Name:
    plib_gpio.h
 
  Summary:
    gpio PLIB Header File
 
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

#ifndef PLIB_GPIO_H
#define PLIB_GPIO_H
#include <device.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// Section: Data types and constants


/*** Macros for GPIO_RB1 pin ***/
#define GPIO_RB1_Set()               (_LATB1 = 1U)
#define GPIO_RB1_Clear()             (_LATB1 = 0U)
#define GPIO_RB1_Toggle()            (_LATB1 ^= 1U)
#define GPIO_RB1_OutputEnable()      (_TRISB1 = 0U)
#define GPIO_RB1_InputEnable()       (_TRISB1 = 1U)
#define GPIO_RB1_Get()               ((PORTB >> 1) & 0x1)
#define GPIO_RB1_PIN                 GPIO_PIN_RB1

/*** Macros for IMU_CS pin ***/
#define IMU_CS_Set()               (_LATB3 = 1U)
#define IMU_CS_Clear()             (_LATB3 = 0U)
#define IMU_CS_Toggle()            (_LATB3 ^= 1U)
#define IMU_CS_OutputEnable()      (_TRISB3 = 0U)
#define IMU_CS_InputEnable()       (_TRISB3 = 1U)
#define IMU_CS_Get()               ((PORTB >> 3) & 0x1)
#define IMU_CS_PIN                 GPIO_PIN_RB3

/*** Macros for SRAM_CS pin ***/
#define SRAM_CS_Set()               (_LATB4 = 1U)
#define SRAM_CS_Clear()             (_LATB4 = 0U)
#define SRAM_CS_Toggle()            (_LATB4 ^= 1U)
#define SRAM_CS_OutputEnable()      (_TRISB4 = 0U)
#define SRAM_CS_InputEnable()       (_TRISB4 = 1U)
#define SRAM_CS_Get()               ((PORTB >> 4) & 0x1)
#define SRAM_CS_PIN                 GPIO_PIN_RB4

/*** Macros for DIS_RESET pin ***/
#define DIS_RESET_Set()               (_LATC0 = 1U)
#define DIS_RESET_Clear()             (_LATC0 = 0U)
#define DIS_RESET_Toggle()            (_LATC0 ^= 1U)
#define DIS_RESET_OutputEnable()      (_TRISC0 = 0U)
#define DIS_RESET_InputEnable()       (_TRISC0 = 1U)
#define DIS_RESET_Get()               ((PORTC >> 0) & 0x1)
#define DIS_RESET_PIN                 GPIO_PIN_RC0

/*** Macros for DIS_MODE pin ***/
#define DIS_MODE_Set()               (_LATC2 = 1U)
#define DIS_MODE_Clear()             (_LATC2 = 0U)
#define DIS_MODE_Toggle()            (_LATC2 ^= 1U)
#define DIS_MODE_OutputEnable()      (_TRISC2 = 0U)
#define DIS_MODE_InputEnable()       (_TRISC2 = 1U)
#define DIS_MODE_Get()               ((PORTC >> 2) & 0x1)
#define DIS_MODE_PIN                 GPIO_PIN_RC2

/*** Macros for TXDE pin ***/
#define TXDE_Set()               (_LATC5 = 1U)
#define TXDE_Clear()             (_LATC5 = 0U)
#define TXDE_Toggle()            (_LATC5 ^= 1U)
#define TXDE_OutputEnable()      (_TRISC5 = 0U)
#define TXDE_InputEnable()       (_TRISC5 = 1U)
#define TXDE_Get()               ((PORTC >> 5) & 0x1)
#define TXDE_PIN                 GPIO_PIN_RC5

/*** Macros for TP0 pin ***/
#define TP0_Set()               (_LATD9 = 1U)
#define TP0_Clear()             (_LATD9 = 0U)
#define TP0_Toggle()            (_LATD9 ^= 1U)
#define TP0_OutputEnable()      (_TRISD9 = 0U)
#define TP0_InputEnable()       (_TRISD9 = 1U)
#define TP0_Get()               ((PORTD >> 9) & 0x1)
#define TP0_PIN                 GPIO_PIN_RD9

/*** Macros for RLED pin ***/
#define RLED_Set()               (_LATD0 = 1U)
#define RLED_Clear()             (_LATD0 = 0U)
#define RLED_Toggle()            (_LATD0 ^= 1U)
#define RLED_OutputEnable()      (_TRISD0 = 0U)
#define RLED_InputEnable()       (_TRISD0 = 1U)
#define RLED_Get()               ((PORTD >> 0) & 0x1)
#define RLED_PIN                 GPIO_PIN_RD0

/*** Macros for ISO1_S pin ***/
#define ISO1_S_Set()               (_LATD1 = 1U)
#define ISO1_S_Clear()             (_LATD1 = 0U)
#define ISO1_S_Toggle()            (_LATD1 ^= 1U)
#define ISO1_S_OutputEnable()      (_TRISD1 = 0U)
#define ISO1_S_InputEnable()       (_TRISD1 = 1U)
#define ISO1_S_Get()               ((PORTD >> 1) & 0x1)
#define ISO1_S_PIN                 GPIO_PIN_RD1

/*** Macros for DLED pin ***/
#define DLED_Set()               (_LATD2 = 1U)
#define DLED_Clear()             (_LATD2 = 0U)
#define DLED_Toggle()            (_LATD2 ^= 1U)
#define DLED_OutputEnable()      (_TRISD2 = 0U)
#define DLED_InputEnable()       (_TRISD2 = 1U)
#define DLED_Get()               ((PORTD >> 2) & 0x1)
#define DLED_PIN                 GPIO_PIN_RD2

/*** Macros for ISO3_O pin ***/
#define ISO3_O_Set()               (_LATD3 = 1U)
#define ISO3_O_Clear()             (_LATD3 = 0U)
#define ISO3_O_Toggle()            (_LATD3 ^= 1U)
#define ISO3_O_OutputEnable()      (_TRISD3 = 0U)
#define ISO3_O_InputEnable()       (_TRISD3 = 1U)
#define ISO3_O_Get()               ((PORTD >> 3) & 0x1)
#define ISO3_O_PIN                 GPIO_PIN_RD3

/*** Macros for ISO2_S pin ***/
#define ISO2_S_Set()               (_LATD5 = 1U)
#define ISO2_S_Clear()             (_LATD5 = 0U)
#define ISO2_S_Toggle()            (_LATD5 ^= 1U)
#define ISO2_S_OutputEnable()      (_TRISD5 = 0U)
#define ISO2_S_InputEnable()       (_TRISD5 = 1U)
#define ISO2_S_Get()               ((PORTD >> 5) & 0x1)
#define ISO2_S_PIN                 GPIO_PIN_RD5

/*** Macros for SW1 pin ***/
#define SW1_Set()               (_LATD6 = 1U)
#define SW1_Clear()             (_LATD6 = 0U)
#define SW1_Toggle()            (_LATD6 ^= 1U)
#define SW1_OutputEnable()      (_TRISD6 = 0U)
#define SW1_InputEnable()       (_TRISD6 = 1U)
#define SW1_Get()               ((PORTD >> 6) & 0x1)
#define SW1_PIN                 GPIO_PIN_RD6

/*** Macros for SW2 pin ***/
#define SW2_Set()               (_LATD7 = 1U)
#define SW2_Clear()             (_LATD7 = 0U)
#define SW2_Toggle()            (_LATD7 ^= 1U)
#define SW2_OutputEnable()      (_TRISD7 = 0U)
#define SW2_InputEnable()       (_TRISD7 = 1U)
#define SW2_Get()               ((PORTD >> 7) & 0x1)
#define SW2_PIN                 GPIO_PIN_RD7

/*** Macros for ISO4_O pin ***/
#define ISO4_O_Set()               (_LATD4 = 1U)
#define ISO4_O_Clear()             (_LATD4 = 0U)
#define ISO4_O_Toggle()            (_LATD4 ^= 1U)
#define ISO4_O_OutputEnable()      (_TRISD4 = 0U)
#define ISO4_O_InputEnable()       (_TRISD4 = 1U)
#define ISO4_O_Get()               ((PORTD >> 4) & 0x1)
#define ISO4_O_PIN                 GPIO_PIN_RD4

/*** Macros for DIS_CS pin ***/
#define DIS_CS_Set()               (_LATD11 = 1U)
#define DIS_CS_Clear()             (_LATD11 = 0U)
#define DIS_CS_Toggle()            (_LATD11 ^= 1U)
#define DIS_CS_OutputEnable()      (_TRISD11 = 0U)
#define DIS_CS_InputEnable()       (_TRISD11 = 1U)
#define DIS_CS_Get()               ((PORTD >> 11) & 0x1)
#define DIS_CS_PIN                 GPIO_PIN_RD11
    
#define   GPIO_PORT_A (0U)
#define   GPIO_PORT_B (1U)
#define   GPIO_PORT_C (2U)
#define   GPIO_PORT_D (3U)

/**
 * @brief    GPIO Port Definition
 * This identifies and defines the available GPIO Ports.
 */
typedef uint32_t GPIO_PORT;

/**
* @enum     GPIO_INTERRUPT_STYLES
* @brief    This enumeration identifies the different interrupt styles that can be configured on the pins
*/
typedef enum
{
   GPIO_INTERRUPT_ON_MISMATCH,
   GPIO_INTERRUPT_ON_POSITIVE_EDGE,
   GPIO_INTERRUPT_ON_NEGATIVE_EDGE,
   GPIO_INTERRUPT_ON_ANY_EDGES,
}GPIO_INTERRUPT_STYLE;

#define   GPIO_PIN_RA0  (0U)
#define   GPIO_PIN_RA1  (1U)
#define   GPIO_PIN_RA2  (2U)
#define   GPIO_PIN_RA3  (3U)
#define   GPIO_PIN_RA4  (4U)
#define   GPIO_PIN_RA5  (5U)
#define   GPIO_PIN_RA6  (6U)
#define   GPIO_PIN_RA7  (7U)
#define   GPIO_PIN_RA8  (8U)
#define   GPIO_PIN_RA9  (9U)
#define   GPIO_PIN_RA10  (10U)
#define   GPIO_PIN_RA11  (11U)
#define   GPIO_PIN_RB0  (16U)
#define   GPIO_PIN_RB1  (17U)
#define   GPIO_PIN_RB2  (18U)
#define   GPIO_PIN_RB3  (19U)
#define   GPIO_PIN_RB4  (20U)
#define   GPIO_PIN_RB5  (21U)
#define   GPIO_PIN_RB6  (22U)
#define   GPIO_PIN_RB7  (23U)
#define   GPIO_PIN_RB8  (24U)
#define   GPIO_PIN_RB9  (25U)
#define   GPIO_PIN_RB10  (26U)
#define   GPIO_PIN_RB11  (27U)
#define   GPIO_PIN_RC0  (32U)
#define   GPIO_PIN_RC1  (33U)
#define   GPIO_PIN_RC2  (34U)
#define   GPIO_PIN_RC3  (35U)
#define   GPIO_PIN_RC4  (36U)
#define   GPIO_PIN_RC5  (37U)
#define   GPIO_PIN_RC6  (38U)
#define   GPIO_PIN_RC7  (39U)
#define   GPIO_PIN_RC8  (40U)
#define   GPIO_PIN_RC9  (41U)
#define   GPIO_PIN_RC10  (42U)
#define   GPIO_PIN_RC11  (43U)
#define   GPIO_PIN_RD0  (48U)
#define   GPIO_PIN_RD1  (49U)
#define   GPIO_PIN_RD2  (50U)
#define   GPIO_PIN_RD3  (51U)
#define   GPIO_PIN_RD4  (52U)
#define   GPIO_PIN_RD5  (53U)
#define   GPIO_PIN_RD6  (54U)
#define   GPIO_PIN_RD7  (55U)
#define   GPIO_PIN_RD8  (56U)
#define   GPIO_PIN_RD9  (57U)
#define   GPIO_PIN_RD10  (58U)
#define   GPIO_PIN_RD11  (59U)
#define   GPIO_PIN_RD12  (60U)

/**
 * @brief    GPIO Pins Definition. Identifies and defines the available GPIO Port Pins
 */
typedef uint32_t GPIO_PIN;


/**
 * @brief    Initializes the GPIO library
 *
 * @details  This function initializes the GPIO library and all its ports and pins configured
 * in the pin settings.
 *
 * @pre      None
 *
 * @param    None
 *
 * @return   None  
 *
 * @remarks  None
 */
void GPIO_Initialize(void);

// Section: GPIO Functions which operates on multiple pins of a port

/**
 * @brief      Reads all the I/O lines of the selected port.
 *
 * @details    This function reads the live data values on all the I/O lines of the selected port.
 * Bit values returned in each position indicate corresponding pin state.
 *
 * @pre        Reading the I/O line levels requires the clock of the GPIO Controller to be enabled,
 * otherwise this API reads the levels present on the I/O line at the time the clock was enabled.
 *
 * @param[in]  port- One of the possible values from GPIO_PORT
 *
 * @return     Corresponding PORT register value 
 *
 * @remarks    None
 */
uint32_t GPIO_PortRead(GPIO_PORT port);

/**
 * @brief      Write the value on the masked I/O lines of the selected port.
 *
 * @details    This function writes the data values driven on selected output lines of the selected port.
 * Bit values in each position indicate corresponding pin levels.
 *
 * @pre        Selected pins of the port should be made output before writing.
 *
 * @param[in]  port- One of the possible values from GPIO_PORT
 *
 * @param[in]  mask- A 32 bit value in which positions of 0s and 1s decide which
 * IO pins of the selected port will be written.
 * @param[in]  value- Desired value to be written on the register
 *
 * @return     None  
 *
 * @remarks    None
 */
void GPIO_PortWrite(GPIO_PORT port, uint32_t mask, uint32_t value);

/**
 * @brief      Read the latched value on all the I/O lines of the selected port.
 *
 * @details    This function reads the latched data values on all the I/O lines of the selected port. 
 * Bit values returned in each position indicate corresponding pin levels.
 *
 * @pre        none
 *
 * @param[in]  port- One of the possible values from GPIO_PORT
 *
 * @return     LAT register value 
 *
 * @remarks    None
 */
uint32_t GPIO_PortLatchRead (GPIO_PORT port );

/**
 * @brief      Set the selected IO pins of a port.
 *
 * @details    This function sets (to '1') the selected IO pins of a port.
 *
 * @pre        Selected pins of the port should be made output before setting.
 *
 * @param[in]  port- One of the possible values from GPIO_PORT
 * @param[in]  mask- A 32 bit value in which positions of 0s and 1s decide which
 * IO pins of the selected port will be written.
 *
 * @return     None  
 *
 * @remarks    None
 */
void GPIO_PortSet(GPIO_PORT port, uint32_t mask);

/**
 * @brief      Clear the selected IO pins of a port.
 *
 * @details    This function clears (to '0') the selected IO pins of a port.
 *
 * @pre        Selected pins of the port should be made output before clearing.
 *
 * @param[in]  port- One of the possible values from GPIO_PORT
 * @param[in]  mask- A 32 bit value in which positions of 0s and 1s decide which
 * IO pins of the selected port will be written.
 *
 * @return     None  
 *
 * @remarks    None
 */
void GPIO_PortClear(GPIO_PORT port, uint32_t mask);

/**
 * @brief      Toggles the selected IO pins of a port.
 *
 * @details    This function toggles (or invert) the selected IO pins of a port.
 *
 * @pre        Selected pins of the port should be made output before toggling.
 *
 * @param[in]  port- One of the possible values from GPIO_PORT
 * @param[in]  mask- A 32 bit value in which positions of 0s and 1s decide which IO
 * pins of the selected port will be written.
 *
 * @return     None  
 *
 * @remarks    None
 */
void GPIO_PortToggle(GPIO_PORT port, uint32_t mask);

/**
 * @brief      Enables selected IO pins of a port as input.
 *
 * @details    This function enables selected IO pins of a port as input.
 *
 * @pre        None
 *
 * @param[in]  port- One of the possible values from GPIO_PORT
 * @param[in]  mask- A 32 bit value in which positions of 0s and 1s decide which IO pins
 * of the selected port will be written.
 *
 * @return     None
 *
 * @remarks    None 
 */
void GPIO_PortInputEnable(GPIO_PORT port, uint32_t mask);

/**
 * @brief      Enables selected IO pins of a port as output(s).
 *
 * @details    This function enables selected IO pins of the given port as output(s).
 *
 * @pre        None
 *
 * @param[in]  port- One of the possible values from GPIO_PORT
 * @param[in]  mask- A 32 bit value in which positions of 0s and 1s decide which IO pins
 * of the selected port will be written.
 *
 * @return     None  
 *
 * @remarks    None
 */
void GPIO_PortOutputEnable(GPIO_PORT port, uint32_t mask);


// Section: GPIO Functions which operates on one pin at a time

/**
 * @brief      Writes the logic level of the selected pin.
 *
 * @details    This function writes/drives the "value" on the selected I/O line/pin.
 * 
 * @pre        Pin must be made output before writing to it.
 *
 * @param[in]  pin- Any possible value from GPIO_PIN
 * @param[in]  value- Desired value to be written on the pin. 0 or 1 
 *
 * @return     None  
 * 
 * @remarks    None
 */
static inline void GPIO_PinWrite(GPIO_PIN pin, bool value)
{
    GPIO_PortWrite((GPIO_PORT)(pin>>4), (uint32_t)(0x1) << (pin & 0xFU), (uint32_t)(value) << (pin & 0xFU));
}

/**
 * @brief      Reads the selected pin value.
 * 
 * @details    This function reads the selected pin value.
 * it reads the value regardless of pin configuration, whether uniquely as an input,
 * or driven by the GPIO Controller, or driven by peripheral.
 * @pre        None
 *
 * @param[in]  pin- Any possible value from GPIO_PIN
 * @param[in]  value- Desired value to be written on the pin. 0 or 1 
 *
 * @return     True- Pin state is HIGH level(1)
 *             False- Pin state is LOW level(0) 
 *
 * @remarks    None
 */
static inline bool GPIO_PinRead(GPIO_PIN pin)
{
    return ((((GPIO_PortRead((GPIO_PORT)(pin>>4))) >> (pin & 0xFU)) & 0x1U) != 0U);
}

/**
 * @brief      Reads the latched value on the selected pin.
 *
 * @details    This function reads the data driven on the selected I/O line/pin.
 * Whatever data is written/driven on I/O line by using any of the GPIO PLIB APIs, will be read by this API.
 *
 * @pre        None
 *
 * @param[in]  pin- Any possible value from GPIO_PIN
 * @param[in]  value- Desired value to be written on the pin. 0 or 1 
 *
 * @return     True- Pin state is HIGH level(1)
 *             False- Pin state is LOW level(0) 
 *
 * @remarks    None
 */
static inline bool GPIO_PinLatchRead(GPIO_PIN pin)
{
    return (((GPIO_PortLatchRead((GPIO_PORT)(pin>>4)) >> (pin & 0xFU)) & 0x1U) != 0U);
}

/**
 * @brief      Toggles the selected pin.
 *
 * @details    This function toggles/inverts the value on the selected I/O line/pin.
 *
 * @pre        Pin must be made output before toggling.
 *
 * @param[in]  pin- One of the possible values from GPIO_PIN
 *
 * @return     None  
 *
 * @remarks    None
 */
static inline void GPIO_PinToggle(GPIO_PIN pin)
{
    GPIO_PortToggle((GPIO_PORT)(pin>>4), 0x1UL << (pin & 0xFU));
}

/**
 * @brief      Sets the selected pin.
 *
 * @details    This function drives '1' on the selected I/O line/pin.
 *
 * @pre        Pin must be made output before setting.
 *
 * @param[in]  pin- One of the possible values from GPIO_PIN
 *
 * @return     None  
 *
 * @remarks    None
 */
static inline void GPIO_PinSet(GPIO_PIN pin)
{
    GPIO_PortSet((GPIO_PORT)(pin>>4), 0x1UL << (pin & 0xFU));
}

/**
 * @brief      Clears the selected pin.
 *
 * @details    This function drives '0' on the selected I/O line/pin.
 *
 * @pre        Pin must be made output before clearing.
 *
 * @param[in]  pin- One of the possible values from GPIO_PIN
 *
 * @return     None  
 *
 * @remarks    None
 */
static inline void GPIO_PinClear(GPIO_PIN pin)
{
    GPIO_PortClear((GPIO_PORT)(pin>>4), 0x1UL << (pin & 0xFU));
}

/**
 * @brief      Enables selected IO pin as Digital input.
 *
 * @details    This function enables selected IO pin as Digital input.
 *
 * @pre        None
 *
 * @param[in]  pin- One of the possible values from GPIO_PIN
 *
 * @return     None  
 *
 * @remarks    None
 */
static inline void GPIO_PinInputEnable(GPIO_PIN pin)
{
    GPIO_PortInputEnable((GPIO_PORT)(pin>>4), 0x1UL << (pin & 0xFU));
}

/**
 * @brief      Enables selected IO pin as Digital output.
 *
 * @details    This function enables selected IO pin as Digital output.
 *
 * @pre        None
 *
 * @param[in]  pin- One of the possible values from GPIO_PIN
 *
 * @return     None  
 *
 * @remarks    None
 */
static inline void GPIO_PinOutputEnable(GPIO_PIN pin)
{
    GPIO_PortOutputEnable((GPIO_PORT)(pin>>4), 0x1UL << (pin & 0xFU));
}


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

   }  

#endif
// DOM-IGNORE-END
#endif // PLIB_GPIO_H
