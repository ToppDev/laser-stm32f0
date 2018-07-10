#include "usart.h"

void USART1_IRQHandler(void)
{
	HAL_UART_IRQHandler(&huart1);
}

void uart_dma_init();

void USART_Init()
{


	__HAL_RCC_USART1_CLK_ENABLE();

	huart1.Instance = USART1;
	huart1.Init.BaudRate = 9600;
	huart1.Init.Mode = UART_MODE_TX_RX;
	huart1.Init.Parity = UART_PARITY_NONE;
	huart1.Init.StopBits = UART_STOPBITS_1;
	huart1.Init.WordLength = UART_WORDLENGTH_8B;
	huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;

    HAL_NVIC_SetPriority(USART1_IRQn, 0x03, 0);
    HAL_NVIC_EnableIRQ(USART1_IRQn);
    HAL_NVIC_ClearPendingIRQ(USART1_IRQn);

	HAL_UART_Init(&huart1);

	uart_dma_init();
}

DMA_HandleTypeDef hdma_usart1_tx;

void uart_dma_init()
{
  /* DMA controller clock enable */
	__HAL_RCC_DMA1_CLK_ENABLE();

  /* Peripheral DMA init*/

	huart1.hdmarx->Instance = DMA1_Channel1;
	huart1.hdmarx->Init.Direction = DMA_PERIPH_TO_MEMORY;
	huart1.hdmarx->Init.PeriphInc = DMA_PINC_DISABLE;
	huart1.hdmarx->Init.MemInc = DMA_MINC_ENABLE;
	huart1.hdmarx->Init.PeriphDataAlignment = DMA_MDATAALIGN_WORD;
	huart1.hdmarx->Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
	huart1.hdmarx->Init.Mode = DMA_NORMAL;
	huart1.hdmarx->Init.Priority = DMA_PRIORITY_HIGH;
  HAL_DMA_Init(huart1.hdmarx);

  //__HAL_LINKDMA(&huart1,hdmatx,hdma_usart1_tx);

  /* DMA interrupt init */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
}


/* This function handles DMA1 Channel1 global interrupt. */
void DMA1_Channel1_IRQHandler(void)
{
  HAL_DMA_IRQHandler(&hdma_usart1_tx);
}
