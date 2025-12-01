/*******************************************************************************
  uart1 PLIB
 
  Company:
    Microchip Technology Inc.
 
  File Name:
    plib_uart1.c
 
  Summary:
    uart1 PLIB Source File
 
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

#include <xc.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "device.h"
#include "interrupts.h"
#include "plib_uart1.h"

// Section: UART1 Implementation

volatile static UART_RING_BUFFER_OBJECT uart1Obj;

// Section: Macro Definitions

//UART UxCON MODE options
#define U1CON_MODE_8_BIT_NONE          ((uint32_t)(_U1CON_MODE_MASK & ((uint32_t)(0) << _U1CON_MODE_POSITION))) 
#define U1CON_MODE_7_BIT          ((uint32_t)(_U1CON_MODE_MASK & ((uint32_t)(1) << _U1CON_MODE_POSITION))) 
#define U1CON_MODE_8_BIT_ODD          ((uint32_t)(_U1CON_MODE_MASK & ((uint32_t)(2) << _U1CON_MODE_POSITION))) 
#define U1CON_MODE_8_BIT_EVEN          ((uint32_t)(_U1CON_MODE_MASK & ((uint32_t)(3) << _U1CON_MODE_POSITION))) 

//UART UxCON STP options
#define U1CON_STP_1_SENT_1_RECEIVE           ((uint32_t)(_U1CON_STP_MASK & ((uint32_t)(0) << _U1CON_STP_POSITION))) 
#define U1CON_STP_1_5_SENT_1_5_RECEIVE           ((uint32_t)(_U1CON_STP_MASK & ((uint32_t)(1) << _U1CON_STP_POSITION))) 
#define U1CON_STP_2_SENT_2_RECEIVE           ((uint32_t)(_U1CON_STP_MASK & ((uint32_t)(2) << _U1CON_STP_POSITION))) 
#define U1CON_STP_2_SENT_1_RECEIVE           ((uint32_t)(_U1CON_STP_MASK & ((uint32_t)(3) << _U1CON_STP_POSITION))) 

//UART UxCON CLKSEL options
#define U1CON_CLKSEL_UPB_CLOCK        ((uint32_t)(_U1CON_CLKSEL_MASK & ((uint32_t)(0) << _U1CON_CLKSEL_POSITION))) 
#define U1CON_CLKSEL_CLOCK_GEN_8        ((uint32_t)(_U1CON_CLKSEL_MASK & ((uint32_t)(1) << _U1CON_CLKSEL_POSITION))) 

//UART UxCON FLO options
#define U1CON_FLO_NONE        ((uint32_t)(_U1CON_FLO_MASK & ((uint32_t)(0) << _U1CON_FLO_POSITION))) 

#define UART_MAX_BAUD 0xFFFFFUL
#define UART_MIN_FRACTIONAL_BAUD 16U

#define UART1_READ_BUFFER_SIZE      (256U + 1U)
volatile static uint8_t UART1_ReadBuffer[UART1_READ_BUFFER_SIZE];

#define UART1_WRITE_BUFFER_SIZE      (256U + 1U)
volatile static uint8_t UART1_WriteBuffer[UART1_WRITE_BUFFER_SIZE];

void static UART1_ErrorClear( void )
{
    UART_ERROR errors = UART_ERROR_NONE;
    uint8_t dummyData = 0u;

    errors = (UART_ERROR)(U1STAT & (_U1STAT_RXFOIF_MASK | _U1STAT_FERIF_MASK | _U1STAT_PERIF_MASK));

    if(errors != UART_ERROR_NONE)
    {
        /* If it's a overrun error then clear it to flush FIFO */
        if(U1STATbits.RXFOIF != 0U)
        {
            U1STATbits.RXFOIF = 0U;
        }

        /* Read existing error bytes from FIFO to clear parity and framing error flags */
        while(U1STATbits.RXBE != 1U)
        {
            dummyData = (uint8_t)U1RXB;
        }

        /* Clear error interrupt flag */
        IFS2bits.U1RXIF = 0;

        /* Clear up the receive interrupt flag so that RX interrupt is not
         * triggered for error bytes */
        IFS2bits.U1RXIF = 0;

    }

    // Ignore the warning
    (void)dummyData;
}

void UART1_Initialize( void )
{
    /*
    Baud Rate:      460829.493
    */
    U1CON = (U1CON_MODE_8_BIT_NONE
            |U1CON_STP_1_SENT_1_RECEIVE
            |_U1CON_CLKMOD_MASK
            |U1CON_FLO_NONE
            |U1CON_CLKSEL_UPB_CLOCK);
    U1STAT = (_U1STAT_RXFOIE_MASK
            |_U1STAT_FERIE_MASK
            |_U1STAT_PERIE_MASK);

    /* BAUD Rate register Setup */
    U1BRG = 0xd9;
  
    /* Disable Interrupts */
    IEC2bits.U1EIE = 0U;
    IEC2bits.U1RXIE = 0U;
    IEC2bits.U1TXIE = 0U;

    /* Initialize instance object */
    uart1Obj.rdCallback = NULL;
    uart1Obj.rdInIndex = 0;
    uart1Obj.rdOutIndex = 0;
    uart1Obj.isRdNotificationEnabled = false;
    uart1Obj.isRdNotifyPersistently = false;
    uart1Obj.rdThreshold = 0;

    uart1Obj.wrCallback = NULL;
    uart1Obj.wrInIndex = 0;
    uart1Obj.wrOutIndex = 0;
    uart1Obj.isWrNotificationEnabled = false;
    uart1Obj.isWrNotifyPersistently = false;
    uart1Obj.wrThreshold = 0;

    uart1Obj.errors = UART_ERROR_NONE;


    uart1Obj.rdBufferSize = UART1_READ_BUFFER_SIZE;
    uart1Obj.wrBufferSize = UART1_WRITE_BUFFER_SIZE;

    /* Enable UART1_ERROR Interrupt */
    IEC2bits.U1EIE = 1U;

    /* Enable UART1_RX Interrupt */
    IEC2bits.U1RXIE = 1U;
    
    /* Turn ON UART1 */
    U1CON |= (_U1CON_ON_MASK
                 |_U1CON_TXEN_MASK
                 |_U1CON_RXEN_MASK);
}

bool UART1_SerialSetup( UART_SERIAL_SETUP *setup, uint32_t srcClkFreq )
{
    bool status = false;
    uint32_t baud;
    uint32_t ctrlReg;
    uint32_t uxbrg;

    if (setup != NULL)
    {
        baud = setup->baudRate;

        if (baud == 0U)
        {
            return status;
        }


        srcClkFreq = UART1_FrequencyGet();

        
        /* Turn OFF UART1. Save UTXEN, URXEN bits as these are cleared upon disabling UART */
        ctrlReg = U1CON & (_U1CON_TXEN_MASK | _U1CON_RXEN_MASK );
        U1CONbits.ON = 0U;
              
        /* Calculate BRG value in fractional mode as it has least error rate */
        uxbrg = (srcClkFreq/baud);
        /* Check if the valid baud value is set */
        if(uxbrg < UART_MIN_FRACTIONAL_BAUD)
        {
            /* Baud rate cannot be achieved with current clock source value */
            return status;
        }
        else if(uxbrg > UART_MAX_BAUD)
        {
            /* Calculate BRG value for high speed mode*/
            uxbrg = (srcClkFreq/(4U*baud)) - 1U;
            U1CONbits.BRGS = 1U;
            
            if(uxbrg > UART_MAX_BAUD)
            {
                /* Calculate BRG value for low speed mode*/
                uxbrg = (srcClkFreq/(16U*baud)) - 1U;
                U1CONbits.BRGS = 0U;
                if(uxbrg > UART_MAX_BAUD)
                {
                    /* Baud rate cannot be achieved with current clock source value */
                    return status;
                }
            }
        }
        else
        {
            U1CONbits.CLKMOD = 1;
        }
        
        if(setup->dataWidth == UART_DATA_8_BIT)
        {
            /* Configure UART1 mode with parity if mode is 8 bit */
            U1CONbits.MODE = (uint8_t)setup->parity;
        }
        else
        {
            /* Configure UART1 mode to 7 bit */
            U1CONbits.MODE = (uint8_t)setup->dataWidth;
        }

        /* Configure UART1 mode */
        U1CONbits.STP = (uint8_t)setup->stopBits;
        
        /* Configure UART1 Baud Rate */
        U1BRG = uxbrg;

        uart1Obj.rdBufferSize = UART1_READ_BUFFER_SIZE;
        uart1Obj.wrBufferSize = UART1_WRITE_BUFFER_SIZE;

        U1CONbits.ON = 1U;

        /* Restore UTXEN, URXEN bits. */
        U1CON |= ctrlReg;

        status = true;
    }

    return status;
}

/* This routine is only called from ISR. Hence do not disable/enable USART interrupts. */
static inline bool UART1_RxPushByte(uint8_t rdByte)
{
    uint32_t nextIndex;
    bool isSuccess = false;

    // nextIndex is where head will point to after this write.
    nextIndex = uart1Obj.rdInIndex + 1U;

    if (nextIndex >= uart1Obj.rdBufferSize)
    {
        nextIndex = 0U;
    }

    if (nextIndex == uart1Obj.rdOutIndex)
    {
        /* Queue is full - Report it to the application. Application gets a chance to free up space by reading data out from the RX ring buffer */
        if(uart1Obj.rdCallback != NULL)
        {
            uintptr_t rdContext = uart1Obj.rdContext;

            uart1Obj.rdCallback(UART_EVENT_READ_BUFFER_FULL, rdContext);

            /* Read the indices again in case application has freed up space in RX ring buffer */
            nextIndex = uart1Obj.rdInIndex + 1U;

            if (nextIndex >= uart1Obj.rdBufferSize)
            {
                nextIndex = 0U;
            }
        }
    }

    /* Attempt to push the data into the ring buffer */
    if (nextIndex != uart1Obj.rdOutIndex)
    {
        uint32_t rdInIndex = uart1Obj.rdInIndex;

        UART1_ReadBuffer[rdInIndex] = (uint8_t)rdByte;

        uart1Obj.rdInIndex = nextIndex;

        isSuccess = true;
    }
    else
    {
        /* Queue is full. Data will be lost. */
    }

    return isSuccess;
}

/* This routine is only called from ISR. Hence do not disable/enable USART interrupts. */
static void UART1_ReadNotificationSend(void)
{
    uint32_t nUnreadBytesAvailable;

    if (uart1Obj.isRdNotificationEnabled == true)
    {
        nUnreadBytesAvailable = UART1_ReadCountGet();

        if(uart1Obj.rdCallback != NULL)
        {
            uintptr_t rdContext = uart1Obj.rdContext;

            if (uart1Obj.isRdNotifyPersistently == true)
            {
                if (nUnreadBytesAvailable >= uart1Obj.rdThreshold)
                {
                    uart1Obj.rdCallback(UART_EVENT_READ_THRESHOLD_REACHED, rdContext);
                }
            }
            else
            {
                if (nUnreadBytesAvailable == uart1Obj.rdThreshold)
                {
                    uart1Obj.rdCallback(UART_EVENT_READ_THRESHOLD_REACHED, rdContext);
                }
            }
        }
    }
}

size_t UART1_Read(uint8_t* pRdBuffer, const size_t size)
{
    size_t nBytesRead = 0;
    uint32_t rdOutIndex = 0;
    uint32_t rdInIndex = 0;

    /* Take a snapshot of indices to avoid creation of critical section */
    rdOutIndex = uart1Obj.rdOutIndex;
    rdInIndex = uart1Obj.rdInIndex;

    while (nBytesRead < size)
    {
        if (rdOutIndex != rdInIndex)
        {
            pRdBuffer[nBytesRead] = UART1_ReadBuffer[rdOutIndex];
            nBytesRead++;
            rdOutIndex++;

            if (rdOutIndex >= uart1Obj.rdBufferSize)
            {
                rdOutIndex = 0U;
            }
        }
        else
        {
            /* No more data available in the RX buffer */
            break;
        }
    }

    uart1Obj.rdOutIndex = rdOutIndex;

    return nBytesRead;
}

size_t UART1_ReadCountGet(void)
{
    size_t nUnreadBytesAvailable;
    uint32_t rdInIndex;
    uint32_t rdOutIndex;

    /* Take a snapshot of indices to avoid processing in critical section */
    rdInIndex = uart1Obj.rdInIndex;
    rdOutIndex = uart1Obj.rdOutIndex;

    if ( rdInIndex >=  rdOutIndex)
    {
        nUnreadBytesAvailable =  (size_t)(rdInIndex -  rdOutIndex);
    }
    else
    {
        nUnreadBytesAvailable =  (size_t)((uart1Obj.rdBufferSize -  rdOutIndex) + rdInIndex);
    }

    return nUnreadBytesAvailable;
}

size_t UART1_ReadFreeBufferCountGet(void)
{
    return (uart1Obj.rdBufferSize - 1U) - UART1_ReadCountGet();
}

size_t UART1_ReadBufferSizeGet(void)
{
    return (uart1Obj.rdBufferSize - 1U);
}

bool UART1_ReadNotificationEnable(bool isEnabled, bool isPersistent)
{
    bool previousStatus = uart1Obj.isRdNotificationEnabled;

    uart1Obj.isRdNotificationEnabled = isEnabled;

    uart1Obj.isRdNotifyPersistently = isPersistent;

    return previousStatus;
}

void UART1_ReadThresholdSet(uint32_t nBytesThreshold)
{
    if (nBytesThreshold > 0U)
    {
        uart1Obj.rdThreshold = nBytesThreshold;
    }
}

void UART1_ReadCallbackRegister( UART_RING_BUFFER_CALLBACK callback, uintptr_t context)
{
    uart1Obj.rdCallback = callback;

    uart1Obj.rdContext = context;
}

/* This routine is only called from ISR. Hence do not disable/enable USART interrupts. */
static bool UART1_TxPullByte(uint16_t* pWrByte)
{
    bool isSuccess = false;
    uint32_t wrOutIndex = uart1Obj.wrOutIndex;
    uint32_t wrInIndex = uart1Obj.wrInIndex;

    if (wrOutIndex != wrInIndex)
    {

        *pWrByte = UART1_WriteBuffer[wrOutIndex];
        wrOutIndex++;
        if (wrOutIndex >= uart1Obj.wrBufferSize)
        {
            wrOutIndex = 0U;
        }

        uart1Obj.wrOutIndex = wrOutIndex;

        isSuccess = true;
    }

    return isSuccess;
}

static inline bool UART1_TxPushByte(uint8_t wrByte)
{
    uint32_t nextIndex;
    bool isSuccess = false;
    uint32_t wrOutIndex = uart1Obj.wrOutIndex;
    uint32_t wrInIndex = uart1Obj.wrInIndex;

    nextIndex = wrInIndex + 1U;

    if (nextIndex >= uart1Obj.wrBufferSize)
    {
        nextIndex = 0U;
    }
    if (nextIndex != wrOutIndex)
    {

        UART1_WriteBuffer[wrInIndex] = (uint8_t)wrByte;

        uart1Obj.wrInIndex = nextIndex;

        isSuccess = true;
    }
    else
    {
        /* Queue is full. Report Error. */
    }

    return isSuccess;
}

/* This routine is only called from ISR. Hence do not disable/enable USART interrupts. */
static void UART1_WriteNotificationSend(void)
{
    uint32_t nFreeWrBufferCount;

    if (uart1Obj.isWrNotificationEnabled == true)
    {
        nFreeWrBufferCount = UART1_WriteFreeBufferCountGet();

        if(uart1Obj.wrCallback != NULL)
        {
            uintptr_t wrContext = uart1Obj.wrContext;

            if (uart1Obj.isWrNotifyPersistently == true)
            {
                if (nFreeWrBufferCount >= uart1Obj.wrThreshold)
                {
                    uart1Obj.wrCallback(UART_EVENT_WRITE_THRESHOLD_REACHED, wrContext);
                }
            }
            else
            {
                if (nFreeWrBufferCount == uart1Obj.wrThreshold)
                {
                    uart1Obj.wrCallback(UART_EVENT_WRITE_THRESHOLD_REACHED, wrContext);
                }
            }
        }
    }
}

static size_t UART1_WritePendingBytesGet(void)
{
    size_t nPendingTxBytes;

    /* Take a snapshot of indices to avoid processing in critical section */

    uint32_t wrOutIndex = uart1Obj.wrOutIndex;
    uint32_t wrInIndex = uart1Obj.wrInIndex;

    if ( wrInIndex >=  wrOutIndex)
    {
        nPendingTxBytes =  (size_t)(wrInIndex - wrOutIndex);
    }
    else
    {
        nPendingTxBytes =  (size_t)((uart1Obj.wrBufferSize -  wrOutIndex) + wrInIndex);
    }

    return nPendingTxBytes;
}

size_t UART1_WriteCountGet(void)
{
    size_t nPendingTxBytes;

    nPendingTxBytes = UART1_WritePendingBytesGet();

    return nPendingTxBytes;
}

size_t UART1_Write(uint8_t* pWrBuffer, const size_t size )
{
    size_t nBytesWritten  = 0U;

    while (nBytesWritten < size)
    {

        if (UART1_TxPushByte(pWrBuffer[nBytesWritten]) == true)
        {
            nBytesWritten++;
        }
        else
        {
            /* Queue is full, exit the loop */
            break;
        }

    }

    /* Check if any data is pending for transmission */
    if (UART1_WritePendingBytesGet() > 0U)
    {
        /* Enable TX interrupt as data is pending for transmission */
        IEC2bits.U1TXIE = 1U;
    }

    return nBytesWritten;
}

size_t UART1_WriteFreeBufferCountGet(void)
{
    return (uart1Obj.wrBufferSize - 1U) - UART1_WriteCountGet();
}

size_t UART1_WriteBufferSizeGet(void)
{
    return (uart1Obj.wrBufferSize - 1U);
}

bool UART1_TransmitComplete(void)
{
    bool status = false;

    if(U1STATbits.TXMTIF != 0U)
    {
        status = true;
    }
    return status;
}

bool UART1_WriteNotificationEnable(bool isEnabled, bool isPersistent)
{
    bool previousStatus = uart1Obj.isWrNotificationEnabled;

    uart1Obj.isWrNotificationEnabled = isEnabled;

    uart1Obj.isWrNotifyPersistently = isPersistent;

    return previousStatus;
}

void UART1_WriteThresholdSet(uint32_t nBytesThreshold)
{
    if (nBytesThreshold > 0U)
    {
        uart1Obj.wrThreshold = nBytesThreshold;
    }
}

void UART1_WriteCallbackRegister( UART_RING_BUFFER_CALLBACK callback, uintptr_t context)
{
    uart1Obj.wrCallback = callback;

    uart1Obj.wrContext = context;
}

UART_ERROR UART1_ErrorGet( void )
{
    UART_ERROR errors = uart1Obj.errors;

    uart1Obj.errors = UART_ERROR_NONE;

    /* All errors are cleared, but send the previous error state */
    return errors;
}

bool UART1_AutoBaudQuery( void )
{
    bool autobaudcheck = false;

    if(U1CONbits.ABDEN != 0U)
    {

        autobaudcheck = true;

    }
    return autobaudcheck;
}

void UART1_AutoBaudSet( bool enable )
{
    if( enable == true )
    {
        U1CONbits.ABDEN =  1U;
    }

    /* Turning off ABAUD if it was on can lead to unpredictable behavior, so that
       direction of control is not allowed in this function.                      */
}

void U1E_InterruptHandler(void)
{
    /* Save the error to be reported later */
    uart1Obj.errors = (U1STAT & (_U1STAT_RXFOIF_MASK | _U1STAT_FERIF_MASK | _U1STAT_PERIF_MASK));

    /* Disable the fault interrupt */
    IEC2bits.U1EIE = 0U;

    /* Disable the receive interrupt */
    IEC2bits.U1RXIE = 0U;
    
    UART1_ErrorClear();

    /* Client must call UARTx_ErrorGet() function to clear the errors */
    if( uart1Obj.rdCallback != NULL )
    {
        uintptr_t rdContext = uart1Obj.rdContext;

        uart1Obj.rdCallback(UART_EVENT_READ_ERROR, rdContext);
    }
}


void U1RX_InterruptHandler(void)
{
    /* Keep reading until there is a character available in the RX FIFO */
    while(U1STATbits.RXBE != 1U)
    {
        if (UART1_RxPushByte((uint8_t )(U1RXB)) == true)
        {
            UART1_ReadNotificationSend();
        }
        else
        {
            /* UART RX buffer is full */
        }
    }

    /* Clear UART1 RX Interrupt flag */
    IFS2bits.U1RXIF = 0U;
}

void U1TX_InterruptHandler(void)
{
    uint16_t wrByte;

    /* Check if any data is pending for transmission */
    if (UART1_WritePendingBytesGet() > 0U)
    {
        /* Clear UART1TX Interrupt flag */
        IFS2bits.U1TXIF = 0U;
        
        /* Keep writing to the TX FIFO as long as there is space */
        while(U1STATbits.TXBF == 0U)
        {
            if (UART1_TxPullByte(&wrByte) == true)
            {
                U1TXB = (uint8_t)wrByte;

                /* Send notification */
                UART1_WriteNotificationSend();
            }
            else
            {
                /* Nothing to transmit. Disable the data register empty interrupt. */
                IEC2bits.U1TXIE = 0U;
                break;
            }
        }
    }
    else
    {
        /* Nothing to transmit. Disable the data register empty interrupt. */
        IEC2bits.U1TXIE = 0U;
    }
}
