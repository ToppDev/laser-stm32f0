#include <uart.h>

/*#include "stm32f0xx_ll_dma.h"
#include "stm32f0xx_ll_usart.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_bus.h"*/

void UART_Init()
{
	__HAL_RCC_USART1_CLK_ENABLE();

	UART_Handle.Instance = USART1;
	UART_Handle.Init.BaudRate = 9600;
	UART_Handle.Init.Mode = UART_MODE_TX_RX;
	UART_Handle.Init.Parity = UART_PARITY_NONE;
	UART_Handle.Init.StopBits = UART_STOPBITS_1;
	UART_Handle.Init.WordLength = UART_WORDLENGTH_8B;
	UART_Handle.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	UART_Handle.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;

    HAL_NVIC_SetPriority(USART1_IRQn, 0x03, 0);
    HAL_NVIC_EnableIRQ(USART1_IRQn);
    HAL_NVIC_ClearPendingIRQ(USART1_IRQn);

	HAL_UART_Init(&UART_Handle);
}

void USART1_IRQHandler(void)
{
    HAL_UART_IRQHandler(&UART_Handle);
}

void UART_DMA_Init()
{
    /* DMA controller clock enable */
    __HAL_RCC_DMA1_CLK_ENABLE();

    /* Peripheral DMA init*/
    UART_DMA_Handle.Instance = DMA1_Channel1;
    UART_DMA_Handle.Init.Direction = DMA_PERIPH_TO_MEMORY;
    UART_DMA_Handle.Init.PeriphInc = DMA_PINC_DISABLE;
    UART_DMA_Handle.Init.MemInc = DMA_MINC_ENABLE;
    UART_DMA_Handle.Init.PeriphDataAlignment = DMA_MDATAALIGN_BYTE;
    UART_DMA_Handle.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    UART_DMA_Handle.Init.Mode = DMA_NORMAL;
    UART_DMA_Handle.Init.Priority = DMA_PRIORITY_HIGH;
    HAL_DMA_Init(&UART_DMA_Handle);

    __HAL_LINKDMA(&UART_Handle, hdmarx, UART_DMA_Handle);

    /* DMA interrupt init */
    HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0x03, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
    HAL_NVIC_ClearPendingIRQ(DMA1_Channel1_IRQn);
}

/* This function handles DMA1 Channel1 global interrupt. */
void DMA1_Channel1_IRQHandler(void)
{
    HAL_DMA_IRQHandler(&UART_DMA_Handle);
}

// Low Level API Lösung, funktioniert leider auch nicht
// https://community.st.com/thread/42689-efficiently-use-dma-with-uart-rx-on-stm32

/*
#define DMA_RX_BUFFER_SIZE          2
uint8_t DMA_RX_Buffer[DMA_RX_BUFFER_SIZE];

#define UART_BUFFER_SIZE            4
uint8_t UART_Buffer[UART_BUFFER_SIZE];

LL_USART_InitTypeDef USART_InitStruct;
LL_DMA_InitTypeDef DMA_InitStruct;

void UART_LL_Init()
{
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_USART1);

    LL_USART_StructInit(&USART_InitStruct);
    USART_InitStruct.BaudRate = 9600;
    USART_InitStruct.DataWidth = LL_USART_DATAWIDTH_8B;
    USART_InitStruct.HardwareFlowControl = LL_USART_HWCONTROL_NONE;
    USART_InitStruct.OverSampling = LL_USART_OVERSAMPLING_16;
    USART_InitStruct.Parity = LL_USART_PARITY_NONE;
    USART_InitStruct.StopBits = LL_USART_STOPBITS_1;
    USART_InitStruct.TransferDirection = LL_USART_DIRECTION_TX_RX;
    LL_USART_Init(USART1, &USART_InitStruct);

    // Enable USART and enable interrupt for IDLE line detection
    LL_USART_Enable(USART1);
    LL_USART_EnableDMAReq_RX(USART1);
    LL_USART_EnableIT_IDLE(USART1);

    // Enable USART global interrupts
    NVIC_SetPriority(USART1_IRQn, 1);
    NVIC_EnableIRQ(USART1_IRQn);
}

void UART_DMA_LL_Init()
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_DMA1);

    // Configure DMA for USART RX
    LL_DMA_StructInit(&DMA_InitStruct);
    DMA_InitStruct.Direction = LL_DMA_DIRECTION_PERIPH_TO_MEMORY;
    DMA_InitStruct.MemoryOrM2MDstAddress = (uint32_t)DMA_RX_Buffer;
    DMA_InitStruct.NbData = DMA_RX_BUFFER_SIZE;
    DMA_InitStruct.MemoryOrM2MDstIncMode = LL_DMA_MEMORY_INCREMENT;
    DMA_InitStruct.PeriphOrM2MSrcAddress = (uint32_t)&USART1->RDR;
    LL_DMA_Init(DMA1, LL_DMA_CHANNEL_4, &DMA_InitStruct);

    LL_DMA_EnableIT_TC(DMA1, LL_DMA_CHANNEL_4);
    LL_DMA_EnableChannel(DMA1, LL_DMA_CHANNEL_4);

    // Enable global DMA stream interrupts
    NVIC_SetPriority(DMA1_Channel4_5_IRQn, 0);
    NVIC_EnableIRQ(DMA1_Channel4_5_IRQn);
}

void DMA1_Channel4_5_IRQHandler()
{
    DigOut_Hi(LED_GREEN);
}
*/
