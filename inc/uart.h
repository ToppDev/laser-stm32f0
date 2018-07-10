#ifndef UART_H_
#define UART_H_

#include "stm32f0xx_hal.h"

UART_HandleTypeDef UART_Handle;
DMA_HandleTypeDef UART_DMA_Handle;

void UART_DMA_Init();
void UART_Init();

void UART_LL_Init();
void UART_DMA_LL_Init();

#endif /* UART_H_ */
