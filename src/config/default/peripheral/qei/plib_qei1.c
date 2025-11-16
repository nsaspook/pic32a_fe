
/*******************************************************************************
  qei1 PLIB
 
  Company:
    Microchip Technology Inc.
 
  File Name:
    plib_qei1.c
 
  Summary:
    qei1 PLIB Source File
 
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
#include "plib_qei1.h"
#include <stdbool.h>
#include "device.h"


//Section: Macro Definitions

//Timer Input Clock Division
#define QEI1CON_INTDIV_1_1      ((uint32_t)(_QEI1CON_INTDIV_MASK & ((uint32_t)(0) <<_QEI1CON_INTDIV_POSITION))) 
#define QEI1CON_INTDIV_1_2      ((uint32_t)(_QEI1CON_INTDIV_MASK & ((uint32_t)(1) <<_QEI1CON_INTDIV_POSITION))) 
#define QEI1CON_INTDIV_1_4      ((uint32_t)(_QEI1CON_INTDIV_MASK & ((uint32_t)(2) <<_QEI1CON_INTDIV_POSITION))) 
#define QEI1CON_INTDIV_1_8      ((uint32_t)(_QEI1CON_INTDIV_MASK & ((uint32_t)(3) <<_QEI1CON_INTDIV_POSITION))) 
#define QEI1CON_INTDIV_1_16      ((uint32_t)(_QEI1CON_INTDIV_MASK & ((uint32_t)(4) <<_QEI1CON_INTDIV_POSITION))) 
#define QEI1CON_INTDIV_1_32      ((uint32_t)(_QEI1CON_INTDIV_MASK & ((uint32_t)(5) <<_QEI1CON_INTDIV_POSITION))) 
#define QEI1CON_INTDIV_1_64      ((uint32_t)(_QEI1CON_INTDIV_MASK & ((uint32_t)(6) <<_QEI1CON_INTDIV_POSITION))) 
#define QEI1CON_INTDIV_1_128      ((uint32_t)(_QEI1CON_INTDIV_MASK & ((uint32_t)(7) <<_QEI1CON_INTDIV_POSITION))) 

//Digital Input Filter Clock Division
#define QEI1IOC_QFDIV_1_1		 ((uint32_t)(_QEI1IOC_QFDIV_MASK & ((uint32_t)(0) <<_QEI1IOC_QFDIV_POSITION)))
#define QEI1IOC_QFDIV_1_2		 ((uint32_t)(_QEI1IOC_QFDIV_MASK & ((uint32_t)(1) <<_QEI1IOC_QFDIV_POSITION)))
#define QEI1IOC_QFDIV_1_4		 ((uint32_t)(_QEI1IOC_QFDIV_MASK & ((uint32_t)(2) <<_QEI1IOC_QFDIV_POSITION)))
#define QEI1IOC_QFDIV_1_8		 ((uint32_t)(_QEI1IOC_QFDIV_MASK & ((uint32_t)(3) <<_QEI1IOC_QFDIV_POSITION)))
#define QEI1IOC_QFDIV_1_16		 ((uint32_t)(_QEI1IOC_QFDIV_MASK & ((uint32_t)(4) <<_QEI1IOC_QFDIV_POSITION)))
#define QEI1IOC_QFDIV_1_32		 ((uint32_t)(_QEI1IOC_QFDIV_MASK & ((uint32_t)(5) <<_QEI1IOC_QFDIV_POSITION)))
#define QEI1IOC_QFDIV_1_64		 ((uint32_t)(_QEI1IOC_QFDIV_MASK & ((uint32_t)(6) <<_QEI1IOC_QFDIV_POSITION)))
#define QEI1IOC_QFDIV_1_128		 ((uint32_t)(_QEI1IOC_QFDIV_MASK & ((uint32_t)(7) <<_QEI1IOC_QFDIV_POSITION)))

//QEI Modes
#define QEI1CON_PIMOD_FREE_RUNNING      ((uint32_t)(_QEI1CON_PIMOD_MASK & ((uint32_t)(0) <<_QEI1CON_PIMOD_POSITION))) 
#define QEI1CON_PIMOD_RESET      ((uint32_t)(_QEI1CON_PIMOD_MASK & ((uint32_t)(1) <<_QEI1CON_PIMOD_POSITION))) 
#define QEI1CON_PIMOD_MODULO      ((uint32_t)(_QEI1CON_PIMOD_MASK & ((uint32_t)(6) <<_QEI1CON_PIMOD_POSITION))) 

// Section: QEI1 PLIB Routines

void QEI1_Initialize(void)
{
	QEI1CON = (QEI1CON_INTDIV_1_1
			  |QEI1CON_PIMOD_FREE_RUNNING);
								 
    QEI1IOC = (QEI1IOC_QFDIV_1_1);
			                     
    QEI1STAT = 0x0UL;
    /* POSCNT 0x0; */
    POS1CNT = 0x0UL;
    /* POSHLD 0x0; */
    POS1HLD = 0x0UL;
    /* VELCNT 0x0; */
    VEL1CNT = 0x0UL;
    /* VELHLD 0x0; */
    VEL1HLD = 0x0UL;
    /* INTTMR 0x0; */
    INT1TMR = 0x0UL;
    /* INTHLD 0x0; */
    INT1HLD = 0x0UL;
    /* INDXCNT 0x0; */
    INDX1CNT = 0x0UL;
    /* INDXHLD 0x0; */
    INDX1HLD = 0x0UL;
    /* QEI1GEC 0; */
    QEI1GEC = 0x0UL;
    /* QEI1LEC 0x0; */
    QEI1LEC = 0x0UL;
}

void QEI1_Deinitialize(void)
{
    // Disable QEI
    QEI1_Disable();

	// De-initializing registers to POR values
    INDX1CNT = 0x0UL;
    POS1CNT = 0x0UL;
    QEI1STAT = 0x0UL;
    INT1HLD = 0x0UL;
    POS1HLD = 0x0UL;
    VEL1CNT = 0x0UL;
    INT1TMR = 0x0UL;
    VEL1HLD = 0x0UL;
    QEI1IOC = 0x0UL;
    QEI1CON = 0x0UL;
    QEI1GEC = 0x0UL;
    INDX1HLD = 0x0UL;
    QEI1LEC = 0x0UL;

}




