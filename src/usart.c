#include "usart.h"

void USART1_IRQHandler(void)
{
	HAL_UART_IRQHandler(&huart1);
}

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
}
