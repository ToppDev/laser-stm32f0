#ifndef UART_H_
#define UART_H_

#include "stm32f0xx_hal.h"

/// UART Handle
UART_HandleTypeDef UART_Handle;
/// UART DMA Handle
DMA_HandleTypeDef DMA_Handle;

/**
 * @brief  Initializes the UART DMA for Receive Interrupts in DMA Mode
 * @retval None
 */
void UART_DMA_Init();

/**
 * @brief  Initializes the UART peripheral
 * @retval None
 */
void UART_Init();

#endif /* UART_H_ */
