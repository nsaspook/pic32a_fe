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
#define SPI3_DUMMY_DATA              0xfffffffUL


// *****************************************************************************
// *****************************************************************************
// Section: SPI3 Implementation
// *****************************************************************************
// *****************************************************************************

void SPI3_Initialize ( void )
{
    /* STOP and Reset the SPI */
    SPI3CON1 = 0x00UL;

    /* BAUD Rate register Setup */
    SPI3BRG = 0x5UL;

    SPI3CON1 = (SPI3CON1_MSTEN_HOST_MODE
            |SPI3CON1_CKP_IDLE_LOW_ACTIVE_HIGH
            |SPI3CON1_CKE_ACTIVE_TO_IDLE
            |SPI3CON1_MCLKEN_UPB_CLOCK
            |_SPI3CON1_ENHBUF_MASK);
  
    /* Enable SPI3 */
    SPI3CON1bits.ON = 1U;
}

void SPI3_Deinitialize ( void )
{
    /* STOP the SPI */
    SPI3CON1bits.ON = 0U;


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

bool SPI3_WriteRead(void* pTransmitData, size_t txSize, void* pReceiveData, size_t rxSize)
{
    size_t txCount = 0U;
    size_t rxCount = 0U;
    size_t dummySize = 0U;
    size_t dummyRxCntr = 0U;
    size_t receivedData;
    bool isSuccess = false;

    /* Verify the request */
    if (((txSize > 0U) && (pTransmitData != NULL)) || ((rxSize > 0U) && (pReceiveData != NULL)))
    {
        if (pTransmitData == NULL)
        {
            txSize = 0U;
        }
        if (pReceiveData == NULL)
        {
            rxSize = 0U;
        }

        /* Clear receiver overflow error if any */
        SPI3STATbits.SPIROV = 0U;

        /* Flush out any unread data in SPI read buffer from the previous transfer */
        while ((SPI3STAT & _SPI3STAT_SPIRBE_MASK) == 0U)
        {
            (void)SPI3BUF;
        }

        if (rxSize > txSize)
        {
            dummySize = rxSize - txSize;
        }

        while ((txCount < txSize) || (dummySize != 0U))
        {
            if (txCount < txSize && SPI3STATbits.SPITBF == 0U)
            {
                SPI3BUF = ((uint8_t*)pTransmitData)[txCount];
                txCount++;
            }
            else if (dummySize > 0U && SPI3STATbits.SPITBF == 0U)
            {
                SPI3BUF = SPI3_DUMMY_DATA;
                dummySize--;
            }
            else
            {
                 /* Nothing to process */
            }

            if (rxSize == 0U)
            {
                /* Read until the receive buffer is not empty */
                if ((SPI3STAT & _SPI3STAT_SPIRBE_MASK) == 0U)
                {
                    (void)SPI3BUF;
                    dummyRxCntr++;
                }
            }
            else
            {
                /* If data is read, wait for the Receiver Data the data to become available */
                if (SPI3STATbits.SPIRBE == false)
                {
                    /* We have data waiting in the SPI buffer */
                    receivedData = SPI3BUF;
                    if (rxCount < rxSize)
                    {
                        /* We have data waiting in the SPI buffer */
                        ((uint8_t*)pReceiveData)[rxCount]  = (uint8_t)receivedData;
                        rxCount++;
                    }
                }
            }
        }

        while(rxCount < rxSize)
        {
            if (SPI3STATbits.SPIRBE == false)
            {
                /* We have data waiting in the SPI buffer */
                receivedData = SPI3BUF;

                ((uint8_t*)pReceiveData)[rxCount]  = (uint8_t)receivedData;
                rxCount++;
            }
        }

        if (txSize > rxSize)
        {
            while (dummyRxCntr != (txSize - rxSize))
            {
                /* Wait for all the RX bytes to be received. */
                while ((bool)(SPI3STAT & _SPI3STAT_SPIRBE_MASK) == false)
                {
                    (void)SPI3BUF;
                    dummyRxCntr++;
                }
            }
        }

        /* Make sure no data is pending in the shift register */
        while((SPI3STAT & _SPI3STAT_SRMT_MASK) == 0U)
        {
            /* Data pending in shift register */
        }
        isSuccess = true;
    }
    return isSuccess;
}
