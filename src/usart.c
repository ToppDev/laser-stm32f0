#include "usart.h"

void USARTInit()
{
	__HAL_RCC_USART1_CLK_ENABLE();

	USARTInitStruct.Instance = USART1;
	USARTInitStruct.Init.BaudRate = 9600;
	USARTInitStruct.Init.Mode = USART_MODE_TX_RX;
	USARTInitStruct.Init.Parity = USART_PARITY_NONE;
	USARTInitStruct.Init.StopBits = USART_STOPBITS_1;
	USARTInitStruct.Init.WordLength = USART_WORDLENGTH_8B;

	HAL_USART_Init(&USARTInitStruct);

}
