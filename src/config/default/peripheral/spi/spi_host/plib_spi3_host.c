/*******************************************************************************
  SPI PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_spi3_host.c

  Summary:
    SPI3 Host Source File

  Description:
    This file has implementation of all the interfaces provided for particular
    SPI peripheral.

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

#include "plib_spi3_host.h"
#include "interrupts.h"

/* Global object to save SPI Exchange related data */
volatile static SPI_OBJECT spi3Obj;

// *****************************************************************************
// *****************************************************************************
// Section: Macro Definitions
// *****************************************************************************
// *****************************************************************************

//SPI SPIxCON1 MODE options
#define SPI3CON1_MSTEN_CLIENT_MODE          ((uint32_t)(_SPI3CON1_MSTEN_MASK & ((uint32_t)(0) << _SPI3CON1_MSTEN_POSITION)))
#define SPI3CON1_MSTEN_HOST_MODE          ((uint32_t)(_SPI3CON1_MSTEN_MASK & ((uint32_t)(1) << _SPI3CON1_MSTEN_POSITION)))

//SPI SPIxCON1 Clock Polarity options
#define SPI3CON1_CKP_IDLE_LOW_ACTIVE_HIGH           ((uint32_t)(_SPI3CON1_CKP_MASK & ((uint32_t)(0) << _SPI3CON1_CKP_POSITION)))
#define SPI3CON1_CKP_IDLE_HIGH_ACTIVE_LOW           ((uint32_t)(_SPI3CON1_CKP_MASK & ((uint32_t)(1) << _SPI3CON1_CKP_POSITION)))

//SPI SPIxCON1 Clock Edge options
#define SPI3CON1_CKE_IDLE_TO_ACTIVE           ((uint32_t)(_SPI3CON1_CKE_MASK & ((uint32_t)(0) << _SPI3CON1_CKE_POSITION)))
#define SPI3CON1_CKE_ACTIVE_TO_IDLE           ((uint32_t)(_SPI3CON1_CKE_MASK & ((uint32_t)(1) << _SPI3CON1_CKE_POSITION)))

//SPI SPIxCON1 Clock select options
#define SPI3CON1_MCLKEN_UPB_CLOCK           ((uint32_t)(_SPI3CON1_MCLKEN_MASK & ((uint32_t)(0) << _SPI3CON1_MCLKEN_POSITION)))
#define SPI3CON1_MCLKEN_CLOCK_GEN_9           ((uint32_t)(_SPI3CON1_MCLKEN_MASK & ((uint32_t)(1) << _SPI3CON1_MCLKEN_POSITION)))

/**
* @brief  Macro to define SPI3 FIFO Size available
*/
#define SPI3_FIFO_SIZE               4U

/**
* @brief  Macro to define dummy data used for SPI transfer
*/
#define SPI3_DUMMY_DATA              0xffUL


// *****************************************************************************
// *****************************************************************************
// Section: SPI3 Implementation
// *****************************************************************************
// *****************************************************************************

void SPI3_Initialize ( void )
{
    /* Disable SPI3 Interrupts */
    IEC2bits.SPI3EIE = 0U;
    IEC2bits.SPI3RXIE = 0U;
    IEC2bits.SPI3TXIE = 0U;

    /* STOP and Reset the SPI */
    SPI3CON1 = 0x00UL;

    /* Clear SPI3 Interrupt flags */
    IFS2bits.SPI3EIF = 0U;
    IFS2bits.SPI3RXIF = 0U;
    IFS2bits.SPI3TXIF = 0U;

    /* BAUD Rate register Setup */
    SPI3BRG = 0x1UL;

    SPI3CON1 = (SPI3CON1_MSTEN_HOST_MODE
            |SPI3CON1_CKP_IDLE_LOW_ACTIVE_HIGH
            |SPI3CON1_CKE_ACTIVE_TO_IDLE
            |SPI3CON1_MCLKEN_UPB_CLOCK
            |_SPI3CON1_ENHBUF_MASK);

    /* Initialize global variables */
    spi3Obj.transferIsBusy = false;
    spi3Obj.callback = NULL;

    /* Enable SPI3 */
    SPI3CON1bits.ON = 1U;
}

void SPI3_Deinitialize ( void )
{
    /* Disable SPI3 Interrupts */
    IEC2bits.SPI3EIE = 0U;
    IEC2bits.SPI3RXIE = 0U;
    IEC2bits.SPI3TXIE = 0U;
    /* STOP the SPI */
    SPI3CON1bits.ON = 0U;

    /* Clear SPI3 Interrupt flags */
    IFS2bits.SPI3EIF = 0U;
    IFS2bits.SPI3RXIF = 0U;
    IFS2bits.SPI3TXIF = 0U;


    SPI3CON1 = 0x0UL;
    SPI3CON2 = 0x0UL;
    SPI3BRG = 0x0UL;
    SPI3IMSK = 0x0UL;
    SPI3STAT = 0x28UL;



}

bool SPI3_TransferSetup (SPI_TRANSFER_SETUP* setup, uint32_t spiSourceClock )
{
    uint32_t t_brg;
    uint32_t baudHigh;
    uint32_t baudLow;
    uint32_t errorHigh;
    uint32_t errorLow;

    if ((setup == NULL) || (setup->clockFrequency == 0U) || (setup->dataBits != SPI_DATA_BITS_8))
    {
        return false;
    }

    spiSourceClock =  SPI3_FrequencyGet();

    t_brg = (((spiSourceClock / (setup->clockFrequency)) / 2u) - 1u);
    baudHigh = spiSourceClock / (2u * (t_brg + 1u));
    baudLow = spiSourceClock / (2u * (t_brg + 2u));
    errorHigh = baudHigh - setup->clockFrequency;
    errorLow = setup->clockFrequency - baudLow;

    if (errorHigh > errorLow)
    {
        t_brg++;
    }

    if(t_brg > 0x1fffUL)
    {
        return false;
    }

    /* STOP and Reset the SPI */
    SPI3CON1bits.ON = 0U;

    SPI3BRG = t_brg;

    SPI3CON1 = (SPI3CON1 & (~(_SPI3CON1_MODE16_MASK | _SPI3CON1_MODE32_MASK | _SPI3CON1_CKP_MASK | _SPI3CON1_CKE_MASK))) |
                            ((uint32_t)setup->clockPolarity | (uint32_t)setup->clockPhase | (uint32_t)setup->dataBits);

    SPI3CON1bits.ON = 1U;

    return true;
}

bool SPI3_Write(void* pTransmitData, size_t txSize)
{
    return(SPI3_WriteRead(pTransmitData, txSize, NULL, 0));
}

bool SPI3_Read(void* pReceiveData, size_t rxSize)
{
    return(SPI3_WriteRead(NULL, 0, pReceiveData, rxSize));
}

bool SPI3_IsTransmitterBusy (void)
{
    return ((SPI3STAT & _SPI3STAT_SRMT_MASK) == 0U)? true : false;
}


bool SPI3_IsBusy (void)
{
    uint32_t StatRead = SPI3STAT;
    return (((spi3Obj.transferIsBusy) != false) || (( StatRead & _SPI3STAT_SRMT_MASK) == 0U));
}

void SPI3_CallbackRegister (SPI_CALLBACK callback, uintptr_t context)
{
    spi3Obj.callback = callback;

    spi3Obj.context = context;
}

static void SPI_FIFO_Fill(void)
{
    uint8_t nDataCopiedToFIFO = 0U;

    size_t txCount = spi3Obj.txCount;

    while (nDataCopiedToFIFO < SPI3_FIFO_SIZE)
    {
        if(SPI3STATbits.SPITBF != 0U)
        {
            break;     /* Exit loop if buffer is full */
        }
        if (txCount < spi3Obj.txSize)
        {
            SPI3BUF = ((uint8_t*)spi3Obj.txBuffer)[txCount];
            txCount++;
        }
        else if (spi3Obj.dummySize > 0U)
        {
            SPI3BUF = SPI3_DUMMY_DATA;
            spi3Obj.dummySize--;
        }
        else
        {
            break;
        }
        nDataCopiedToFIFO++;
    }
    spi3Obj.txCount = txCount;
}

bool SPI3_WriteRead (void* pTransmitData, size_t txSize, void* pReceiveData, size_t rxSize)
{
    bool isRequestAccepted = false;

    /* Verify the request */
    if((spi3Obj.transferIsBusy == false) && (((txSize > 0U) && (pTransmitData != NULL)) || ((rxSize > 0U) && (pReceiveData != NULL))))
    {
        isRequestAccepted = true;
        spi3Obj.txBuffer = pTransmitData;
        spi3Obj.rxBuffer = pReceiveData;
        spi3Obj.rxCount = 0U;
        spi3Obj.txCount = 0U;
        spi3Obj.dummySize = 0U;

        if (pTransmitData != NULL)
        {
            spi3Obj.txSize = txSize;
        }
        else
        {
            spi3Obj.txSize = 0U;
        }

        if (pReceiveData != NULL)
        {
            spi3Obj.rxSize = rxSize;
        }
        else
        {
            spi3Obj.rxSize = 0U;
        }

        spi3Obj.transferIsBusy = true;

        size_t txSz = spi3Obj.txSize;
        if (spi3Obj.rxSize > txSz)
        {
            spi3Obj.dummySize = spi3Obj.rxSize - txSz;
        }

        /* Clear the receive overflow error if any */
        SPI3STATbits.SPIROV = 0U;

        /* Make sure there is no data pending in the RX FIFO */

        while ((SPI3STAT & _SPI3STAT_SPIRBE_MASK) == 0U)
        {
            (void)SPI3BUF;
        }
        /* Configure SPI to generate receive interrupt when receive buffer is empty */
        SPI3IMSKbits.RXMSK = 1U;
        SPI3IMSKbits.RXWIEN = 1U;

        /* Configure SPI to generate transmit interrupt when the transmit buffer is empty*/
        SPI3IMSKbits.SPITBEN = 1U;

        /* Disable the receive interrupt */
        IEC2bits.SPI3RXIE = 0U;

        /* Disable the transmit interrupt */
        IEC2bits.SPI3TXIE = 0U;

        /* Disable the error interrupt */
        IEC2bits.SPI3EIE = 0U;

        /* Clear the receive interrupt flag */
        IFS2bits.SPI3RXIF = 0U;

        /* Clear the transmit interrupt flag */
        IFS2bits.SPI3TXIF = 0U;

        /* Clear the error interrupt flag */
        IFS2bits.SPI3EIF = 0U;

        /* Start the first write here itself, rest will happen in ISR context */
        SPI_FIFO_Fill();

        if (rxSize > 0U)
        {
            if(rxSize < SPI3_FIFO_SIZE)
            {
                SPI3IMSKbits.RXMSK = (uint8_t)rxSize;
            }
            else
            {
                SPI3IMSKbits.RXMSK = SPI3_FIFO_SIZE;
            }
            /* Enable receive interrupt to complete the transfer in ISR context.
             * Keep the transmit interrupt disabled. Transmit interrupt will be
             * enabled later if txCount < txSize, when rxCount = rxSize.
             */
            IEC2bits.SPI3RXIE = 1U;
        }
        else
        {
            if (spi3Obj.txCount != txSz)
            {
                /* Configure SPI to generate interrupt when transmit buffer is completely empty */
                SPI3IMSKbits.SPITBEN = 1U;

                /* ignore receive overflow for transmit only operation*/
                SPI3CON1bits.IGNROV = 1U;

                /* Enable transmit interrupt to complete the transfer in ISR context */
                IEC2bits.SPI3TXIE = 1U;

            }
            else
            {
                /* Enable error interrupt for SRMT(last byte transfer in shift register)*/
                SPI3IMSKbits.SRMTEN = 1U;
                IEC2bits.SPI3EIE = 1U;
            }

        }
    }

    return isRequestAccepted;
}

void __attribute__((used)) SPI3RX_InterruptHandler (void)
{
    uint32_t nRxPending = 0;
    uint32_t receivedData = 0;

    /* Check Receive Buffer Element Count for watermark interrupt */
    if ((SPI3STAT & _SPI3STAT_RXELM_MASK) != 0U)
    {
        size_t txCount = spi3Obj.txCount;
        size_t rxCount = spi3Obj.rxCount;
        while(SPI3STATbits.SPIRBE == false)
        {
            if (rxCount < spi3Obj.rxSize)
            {
                /* Receive buffer is not empty. Read the received data. */
                receivedData = SPI3BUF;

                ((uint8_t*)spi3Obj.rxBuffer)[rxCount] = (uint8_t)receivedData;
                rxCount++;

                spi3Obj.rxCount = rxCount;

                if (rxCount == spi3Obj.rxSize)
                {
                    if (txCount < spi3Obj.txSize)
                    {
                        /* Reception of all bytes is complete. However, there are few more
                         * bytes to be transmitted as txCount != txSize. Finish the
                         * transmission of the remaining bytes from the transmit interrupt. */

                        /* Disable the receive interrupt */
                        IEC2bits.SPI3RXIE = 0U;

                        /* Generate TX interrupt when buffer is completely empty */
                        SPI3IMSKbits.SPITBEN = 1U;

                        /* Enable the transmit interrupt. Callback will be given from the
                         * transmit interrupt, when all bytes are shifted out. */
                        IEC2bits.SPI3TXIE = 1U;
                    }
                }
            }
        }
        if (rxCount < spi3Obj.rxSize)
        {
            /* More bytes pending to be received .. */
            SPI_FIFO_Fill();

            nRxPending = spi3Obj.rxSize - rxCount;

            if(nRxPending <= SPI3_FIFO_SIZE)
            {
                SPI3IMSKbits.RXMSK = (uint8_t)nRxPending;
            }
            else
            {
                SPI3IMSKbits.RXMSK = SPI3_FIFO_SIZE;
            }
        }
        else
        {
            if(rxCount == spi3Obj.rxSize)
            {
                if (txCount == spi3Obj.txSize)
                {
                    /* Clear receiver overflow error if any */
                    SPI3STATbits.SPIROV = 0U;

                    /* Disable receive interrupt */
                    IEC2bits.SPI3RXIE = 0U;

                    /* Transfer complete. Give a callback */
                    spi3Obj.transferIsBusy = false;

                    if(spi3Obj.callback != NULL)
                    {
                        uintptr_t context = spi3Obj.context;
                        spi3Obj.callback(context);
                    }
                }
            }
        }
    }

    /* Clear SPI3 RX Interrupt flag */
    /* This flag should cleared only after reading buffer */
    IFS2bits.SPI3RXIF = 0U;
}

void __attribute__((used)) SPI3E_InterruptHandler(void)
{
    size_t txCount = spi3Obj.txCount;
    if (txCount == spi3Obj.txSize)
    {
        if ((SPI3STAT & _SPI3STAT_SRMT_MASK) != 0U)
        {
            /* Clear receiver overflow error if any */
            SPI3STATbits.SPIROV = 0U;

            /* Disable transmit interrupt */
            IEC2bits.SPI3TXIE = 0U;

            /* Transfer complete. Give a callback */
            spi3Obj.transferIsBusy = false;

            if(spi3Obj.callback != NULL)
            {
                uintptr_t context = spi3Obj.context;
                spi3Obj.callback(context);
            }
        }
    }

    IFS2bits.SPI3EIF = 0U;
}

void __attribute__((used)) SPI3TX_InterruptHandler (void)
{
    /* If there are more words to be transmitted, then transmit them here and keep track of the count */
    if((SPI3STAT & _SPI3STAT_SPITBE_MASK) == _SPI3STAT_SPITBE_MASK)
    {
        size_t txCount = spi3Obj.txCount;

        while (txCount < spi3Obj.txSize)
        {
            if(SPI3STATbits.SPITBF != 0U)
            {
                break;     /* Exit loop if buffer is full */
            }
            SPI3BUF = ((uint8_t*)spi3Obj.txBuffer)[txCount];
            txCount++;

            spi3Obj.txCount = txCount;
            if (txCount == spi3Obj.txSize)
            {
                /* All bytes are submitted to the SPI module. Now, enable transmit
                 * interrupt for the shift register to empty  */
                SPI3IMSKbits.SPITBEN = 0U;
                SPI3IMSKbits.SRMTEN = 1U;

                /* Enable the error interrupt and disable the transmit interrupt*/
                IEC2bits.SPI3EIE = 1U;
                IEC2bits.SPI3TXIE = 0U;
            }

        }
    }
    /* Clear the transmit interrupt flag */
    IFS2bits.SPI3TXIF = 0U;
}

