/*******************************************************************************
  SPI PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_spi2_host.c

  Summary:
    SPI2 Host Source File

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

#include "plib_spi2_host.h"
#include "interrupts.h"

/* Global object to save SPI Exchange related data */
static volatile SPI_OBJECT spi2Obj;

// *****************************************************************************
// *****************************************************************************
// Section: Macro Definitions
// *****************************************************************************
// *****************************************************************************

//SPI SPIxCON1 MODE options
#define SPI2CON1_MSTEN_CLIENT_MODE          ((uint32_t)(_SPI2CON1_MSTEN_MASK & ((uint32_t)(0) << _SPI2CON1_MSTEN_POSITION)))
#define SPI2CON1_MSTEN_HOST_MODE          ((uint32_t)(_SPI2CON1_MSTEN_MASK & ((uint32_t)(1) << _SPI2CON1_MSTEN_POSITION)))

//SPI SPIxCON1 Clock Polarity options
#define SPI2CON1_CKP_IDLE_LOW_ACTIVE_HIGH           ((uint32_t)(_SPI2CON1_CKP_MASK & ((uint32_t)(0) << _SPI2CON1_CKP_POSITION)))
#define SPI2CON1_CKP_IDLE_HIGH_ACTIVE_LOW           ((uint32_t)(_SPI2CON1_CKP_MASK & ((uint32_t)(1) << _SPI2CON1_CKP_POSITION)))

//SPI SPIxCON1 Clock Edge options
#define SPI2CON1_CKE_IDLE_TO_ACTIVE           ((uint32_t)(_SPI2CON1_CKE_MASK & ((uint32_t)(0) << _SPI2CON1_CKE_POSITION)))
#define SPI2CON1_CKE_ACTIVE_TO_IDLE           ((uint32_t)(_SPI2CON1_CKE_MASK & ((uint32_t)(1) << _SPI2CON1_CKE_POSITION)))

//SPI SPIxCON1 Clock select options
#define SPI2CON1_MCLKEN_UPB_CLOCK           ((uint32_t)(_SPI2CON1_MCLKEN_MASK & ((uint32_t)(0) << _SPI2CON1_MCLKEN_POSITION)))
#define SPI2CON1_MCLKEN_CLOCK_GEN_9           ((uint32_t)(_SPI2CON1_MCLKEN_MASK & ((uint32_t)(1) << _SPI2CON1_MCLKEN_POSITION)))

/**
* @brief  Macro to define SPI2 FIFO Size available
*/
#define SPI2_FIFO_SIZE               4U

/**
* @brief  Macro to define dummy data used for SPI transfer
*/
#define SPI2_DUMMY_DATA              0xffUL


// *****************************************************************************
// *****************************************************************************
// Section: SPI2 Implementation
// *****************************************************************************
// *****************************************************************************

void SPI2_Initialize ( void )
{
    /* Disable SPI2 Interrupts */
    IEC2bits.SPI2EIE = 0U;
    IEC2bits.SPI2RXIE = 0U;
    IEC2bits.SPI2TXIE = 0U;

    /* STOP and Reset the SPI */
    SPI2CON1 = 0x00UL;

    /* Clear SPI2 Interrupt flags */
    IFS2bits.SPI2EIF = 0U;
    IFS2bits.SPI2RXIF = 0U;
    IFS2bits.SPI2TXIF = 0U;

    /* BAUD Rate register Setup */
    SPI2BRG = 0x0UL;

    SPI2CON1 = (SPI2CON1_MSTEN_HOST_MODE
            |SPI2CON1_CKP_IDLE_LOW_ACTIVE_HIGH
            |SPI2CON1_CKE_ACTIVE_TO_IDLE
            |SPI2CON1_MCLKEN_CLOCK_GEN_9
            |_SPI2CON1_SMP_MASK
            |_SPI2CON1_ENHBUF_MASK);

    /* Initialize global variables */
    spi2Obj.transferIsBusy = false;
    spi2Obj.callback = NULL;

    /* Enable SPI2 */
    SPI2CON1bits.ON = 1U;
}

void SPI2_Deinitialize ( void )
{
    /* Disable SPI2 Interrupts */
    IEC2bits.SPI2EIE = 0U;
    IEC2bits.SPI2RXIE = 0U;
    IEC2bits.SPI2TXIE = 0U;
    /* STOP the SPI */
    SPI2CON1bits.ON = 0U;

    /* Clear SPI2 Interrupt flags */
    IFS2bits.SPI2EIF = 0U;
    IFS2bits.SPI2RXIF = 0U;
    IFS2bits.SPI2TXIF = 0U;


    SPI2CON1 = 0x0UL;
    SPI2CON2 = 0x0UL;
    SPI2BRG = 0x0UL;
    SPI2IMSK = 0x0UL;
    SPI2STAT = 0x28UL;



}

bool SPI2_TransferSetup (SPI_TRANSFER_SETUP* setup, uint32_t spiSourceClock )
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

    spiSourceClock =  SPI2_FrequencyGet();

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
    SPI2CON1bits.ON = 0U;

    SPI2BRG = t_brg;

    SPI2CON1 = (SPI2CON1 & (~(_SPI2CON1_MODE16_MASK | _SPI2CON1_MODE32_MASK | _SPI2CON1_CKP_MASK | _SPI2CON1_CKE_MASK))) |
                            ((uint32_t)setup->clockPolarity | (uint32_t)setup->clockPhase | (uint32_t)setup->dataBits);

    SPI2CON1bits.ON = 1U;

    return true;
}

bool SPI2_Write(void* pTransmitData, size_t txSize)
{
    return(SPI2_WriteRead(pTransmitData, txSize, NULL, 0));
}

bool SPI2_Read(void* pReceiveData, size_t rxSize)
{
    return(SPI2_WriteRead(NULL, 0, pReceiveData, rxSize));
}

bool SPI2_IsTransmitterBusy (void)
{
    return ((SPI2STAT & _SPI2STAT_SRMT_MASK) == 0U)? true : false;
}


bool SPI2_IsBusy (void)
{
    uint32_t StatRead = SPI2STAT;
    return (((spi2Obj.transferIsBusy) != false) || (( StatRead & _SPI2STAT_SRMT_MASK) == 0U));
}

void SPI2_CallbackRegister (SPI_CALLBACK callback, uintptr_t context)
{
    spi2Obj.callback = callback;

    spi2Obj.context = context;
}

static void SPI_FIFO_Fill(void)
{
    uint8_t nDataCopiedToFIFO = 0U;

    size_t txCount = spi2Obj.txCount;

    while (nDataCopiedToFIFO < SPI2_FIFO_SIZE)
    {
        if(SPI2STATbits.SPITBF != 0U)
        {
            break;     /* Exit loop if buffer is full */
        }
        if (txCount < spi2Obj.txSize)
        {
            SPI2BUF = ((uint8_t*)spi2Obj.txBuffer)[txCount];
            txCount++;
        }
        else if (spi2Obj.dummySize > 0U)
        {
            SPI2BUF = SPI2_DUMMY_DATA;
            spi2Obj.dummySize--;
        }
        else
        {
            break;
        }
        nDataCopiedToFIFO++;
    }
    spi2Obj.txCount = txCount;
}

bool SPI2_WriteRead (void* pTransmitData, size_t txSize, void* pReceiveData, size_t rxSize)
{
    bool isRequestAccepted = false;

    /* Verify the request */
    if((spi2Obj.transferIsBusy == false) && (((txSize > 0U) && (pTransmitData != NULL)) || ((rxSize > 0U) && (pReceiveData != NULL))))
    {
        isRequestAccepted = true;
        spi2Obj.txBuffer = pTransmitData;
        spi2Obj.rxBuffer = pReceiveData;
        spi2Obj.rxCount = 0U;
        spi2Obj.txCount = 0U;
        spi2Obj.dummySize = 0U;

        if (pTransmitData != NULL)
        {
            spi2Obj.txSize = txSize;
        }
        else
        {
            spi2Obj.txSize = 0U;
        }

        if (pReceiveData != NULL)
        {
            spi2Obj.rxSize = rxSize;
        }
        else
        {
            spi2Obj.rxSize = 0U;
        }

        spi2Obj.transferIsBusy = true;

        size_t txSz = spi2Obj.txSize;
        if (spi2Obj.rxSize > txSz)
        {
            spi2Obj.dummySize = spi2Obj.rxSize - txSz;
        }

        /* Clear the receive overflow error if any */
        SPI2STATbits.SPIROV = 0U;

        /* Make sure there is no data pending in the RX FIFO */

        while ((SPI2STAT & _SPI2STAT_SPIRBE_MASK) == 0U)
        {
            (void)SPI2BUF;
        }
        /* Configure SPI to generate receive interrupt when receive buffer is empty */
        SPI2IMSKbits.RXMSK = 1U;
        SPI2IMSKbits.RXWIEN = 1U;

        /* Configure SPI to generate transmit interrupt when the transmit buffer is empty*/
        SPI2IMSKbits.SPITBEN = 1U;

        /* Disable the receive interrupt */
        IEC2bits.SPI2RXIE = 0U;

        /* Disable the transmit interrupt */
        IEC2bits.SPI2TXIE = 0U;

        /* Disable the error interrupt */
        IEC2bits.SPI2EIE = 0U;

        /* Clear the receive interrupt flag */
        IFS2bits.SPI2RXIF = 0U;

        /* Clear the transmit interrupt flag */
        IFS2bits.SPI2TXIF = 0U;

        /* Clear the error interrupt flag */
        IFS2bits.SPI2EIF = 0U;

        /* Start the first write here itself, rest will happen in ISR context */
        SPI_FIFO_Fill();

        if (rxSize > 0U)
        {
            if(rxSize < SPI2_FIFO_SIZE)
            {
                SPI2IMSKbits.RXMSK = (uint8_t)rxSize;
            }
            else
            {
                SPI2IMSKbits.RXMSK = SPI2_FIFO_SIZE;
            }
            /* Enable receive interrupt to complete the transfer in ISR context.
             * Keep the transmit interrupt disabled. Transmit interrupt will be
             * enabled later if txCount < txSize, when rxCount = rxSize.
             */
            IEC2bits.SPI2RXIE = 1U;
        }
        else
        {
            if (spi2Obj.txCount != txSz)
            {
                /* Configure SPI to generate interrupt when transmit buffer is completely empty */
                SPI2IMSKbits.SPITBEN = 1U;

                /* ignore receive overflow for transmit only operation*/
                SPI2CON1bits.IGNROV = 1U;

                /* Enable transmit interrupt to complete the transfer in ISR context */
                IEC2bits.SPI2TXIE = 1U;

            }
            else
            {
                /* Enable error interrupt for SRMT(last byte transfer in shift register)*/
                SPI2IMSKbits.SRMTEN = 1U;
                IEC2bits.SPI2EIE = 1U;
            }

        }
    }

    return isRequestAccepted;
}

void __attribute__((used)) SPI2RX_InterruptHandler (void)
{
    uint32_t nRxPending = 0;
    uint32_t receivedData = 0;

    /* Check Receive Buffer Element Count for watermark interrupt */
    if ((SPI2STAT & _SPI2STAT_RXELM_MASK) != 0U)
    {
        size_t txCount = spi2Obj.txCount;
        size_t rxCount = spi2Obj.rxCount;
        while(SPI2STATbits.SPIRBE == false)
        {
            if (rxCount < spi2Obj.rxSize)
            {
                /* Receive buffer is not empty. Read the received data. */
                receivedData = SPI2BUF;

                ((uint8_t*)spi2Obj.rxBuffer)[rxCount] = (uint8_t)receivedData;
                rxCount++;

                spi2Obj.rxCount = rxCount;

                if (rxCount == spi2Obj.rxSize)
                {
                    if (txCount < spi2Obj.txSize)
                    {
                        /* Reception of all bytes is complete. However, there are few more
                         * bytes to be transmitted as txCount != txSize. Finish the
                         * transmission of the remaining bytes from the transmit interrupt. */

                        /* Disable the receive interrupt */
                        IEC2bits.SPI2RXIE = 0U;

                        /* Generate TX interrupt when buffer is completely empty */
                        SPI2IMSKbits.SPITBEN = 1U;

                        /* Enable the transmit interrupt. Callback will be given from the
                         * transmit interrupt, when all bytes are shifted out. */
                        IEC2bits.SPI2TXIE = 1U;
                    }
                }
            }
        }
        if (rxCount < spi2Obj.rxSize)
        {
            /* More bytes pending to be received .. */
            SPI_FIFO_Fill();

            nRxPending = spi2Obj.rxSize - rxCount;

            if(nRxPending <= SPI2_FIFO_SIZE)
            {
                SPI2IMSKbits.RXMSK = (uint8_t)nRxPending;
            }
            else
            {
                SPI2IMSKbits.RXMSK = SPI2_FIFO_SIZE;
            }
        }
        else
        {
            if(rxCount == spi2Obj.rxSize)
            {
                if (txCount == spi2Obj.txSize)
                {
                    /* Clear receiver overflow error if any */
                    SPI2STATbits.SPIROV = 0U;

                    /* Disable receive interrupt */
                    IEC2bits.SPI2RXIE = 0U;

                    /* Transfer complete. Give a callback */
                    spi2Obj.transferIsBusy = false;

                    if(spi2Obj.callback != NULL)
                    {
                        uintptr_t context = spi2Obj.context;
                        spi2Obj.callback(context);
                    }
                }
            }
        }
    }

    /* Clear SPI2 RX Interrupt flag */
    /* This flag should cleared only after reading buffer */
    IFS2bits.SPI2RXIF = 0U;
}

void __attribute__((used)) SPI2E_InterruptHandler(void)
{
    size_t txCount = spi2Obj.txCount;
    if (txCount == spi2Obj.txSize)
    {
        if ((SPI2STAT & _SPI2STAT_SRMT_MASK) != 0U)
        {
            /* Clear receiver overflow error if any */
            SPI2STATbits.SPIROV = 0U;

            /* Disable transmit interrupt */
            IEC2bits.SPI2TXIE = 0U;

            /* Transfer complete. Give a callback */
            spi2Obj.transferIsBusy = false;

            if(spi2Obj.callback != NULL)
            {
                uintptr_t context = spi2Obj.context;
                spi2Obj.callback(context);
            }
        }
    }

    IFS2bits.SPI2EIF = 0U;
}

void __attribute__((used)) SPI2TX_InterruptHandler (void)
{
    /* If there are more words to be transmitted, then transmit them here and keep track of the count */
    if((SPI2STAT & _SPI2STAT_SPITBE_MASK) == _SPI2STAT_SPITBE_MASK)
    {
        size_t txCount = spi2Obj.txCount;

        while (txCount < spi2Obj.txSize)
        {
            if(SPI2STATbits.SPITBF != 0U)
            {
                break;     /* Exit loop if buffer is full */
            }
            SPI2BUF = ((uint8_t*)spi2Obj.txBuffer)[txCount];
            txCount++;

            spi2Obj.txCount = txCount;
            if (txCount == spi2Obj.txSize)
            {
                /* All bytes are submitted to the SPI module. Now, enable transmit
                 * interrupt for the shift register to empty  */
                SPI2IMSKbits.SPITBEN = 0U;
                SPI2IMSKbits.SRMTEN = 1U;

                /* Enable the error interrupt and disable the transmit interrupt*/
                IEC2bits.SPI2EIE = 1U;
                IEC2bits.SPI2TXIE = 0U;
            }

        }
    }
    /* Clear the transmit interrupt flag */
    IFS2bits.SPI2TXIF = 0U;
}

