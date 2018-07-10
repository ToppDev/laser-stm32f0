#include "main.h"

#include "stm32f0xx.h"
#include "stm32f0xx_hal.h"
#include "string.h"

#include "dig_io.h"
#include "usart.h"

char rx_buff[2];
char tx_buff[32] = "";

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if (huart->Instance == USART1)  //current UART
	{
		if (strcmp(rx_buff, "L1") == 0)
		{
			DigOut_Hi(LED_BLUE);
			DigOut_Hi(LASER);
		}
		else if (strcmp(rx_buff, "L0") == 0)
		{
			DigOut_Lo(LED_BLUE);
			DigOut_Lo(LASER);
		}
		else if (strcmp(rx_buff, "L?") == 0)
		{
			sprintf(tx_buff, "Laser: %s\n", (DigIO_Read(LASER) == 1) ? "an" : "aus");
			HAL_UART_Transmit_IT(&huart1, (uint8_t*)tx_buff, strlen(tx_buff));
		}
		else //if (strcmp(rx_cmd, "\r\n") != 0)
		{
			sprintf(tx_buff, "Unknown command\n");
			HAL_UART_Transmit_IT(&huart1, (uint8_t*)tx_buff, strlen(tx_buff));
		}

		HAL_UART_Receive_DMA(&huart1, (uint8_t*)rx_buff, 2); //activate UART receive interrupt every time
	}
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if (GPIO_Pin == DIG_IO_PIN[BUTTON_USER].GPIO_PIN)
	{
		DigOut_Toggle(LED_GREEN);
	}
}

int main(void)
{
	/* Initialize Hardware Abstraction Layer */
    HAL_Init();

    /* Initialize GPIO Pins and external Interrupts */
    DigIO_Init();

    /* Initialize UART Peripherals and Interrupts */
    USART_Init();

    /* Start the UART Receive Interrupt */
    HAL_UART_Receive_DMA(&huart1, (uint8_t*)rx_buff, 2);

	for(;;)
	{

	}
}
