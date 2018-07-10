#include <uart.h>
#include "main.h"

#include "stm32f0xx.h"
#include "stm32f0xx_hal.h"
#include "string.h"

#include "dig_io.h"

uint8_t rx_buff;
char tx_buff[32] = "";

uint32_t rx_msg_received_tick = 0;
#define RX_MSG_MAX_DELAY 100

#define RX_MSG_SIZE 2
char rx_msg[RX_MSG_SIZE];
uint8_t rx_msg_index = 0;

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if (huart->Instance == USART1)  //current UART
	{
	    // Protection against sending single characters and then sending correct commands with 2 characters
	    // Msg: a --> Buffer: [a]
	    // Msg: L1 --> [aL] --> Interrupt --> Buffer: [1]

	    // If last message was sent over RX_MSG_MAX_DELAY milliseconds in the past, see message as new message
	    if (HAL_GetTick() - rx_msg_received_tick > RX_MSG_MAX_DELAY)
	        rx_msg_index = 0;
	    // Update Message received tick
	    rx_msg_received_tick = HAL_GetTick();

	    // Write newly received buffer into message buffer
	    rx_msg[rx_msg_index++] = rx_buff;

	    // 2 Characters received
	    if (rx_msg_index == RX_MSG_SIZE)
	    {
	        if (strcmp(rx_msg, "L1") == 0)
	        {
	            DigOut_Hi(LED_BLUE);
	            DigOut_Hi(LASER);
	        }
	        else if (strcmp(rx_msg, "L0") == 0)
	        {
	            DigOut_Lo(LED_BLUE);
	            DigOut_Lo(LASER);
	        }
	        else if (strcmp(rx_msg, "L?") == 0)
	        {
	            sprintf(tx_buff, "Laser: %s\n", (DigIO_Read(LASER) == 1) ? "an" : "aus");
	            HAL_UART_Transmit_IT(&UART_Handle, (uint8_t*)tx_buff, strlen(tx_buff));
	        }
	        else if (rx_msg[0] != '\r' && rx_msg[0] != '\n')
	        {
	            sprintf(tx_buff, "Unknown command\n");
	            HAL_UART_Transmit_IT(&UART_Handle, (uint8_t*)tx_buff, strlen(tx_buff));
	        }
	        rx_msg_index = 0;
	    }

		HAL_UART_Receive_IT(&UART_Handle, &rx_buff, 1); //activate UART receive interrupt every time
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
    UART_Init();

    /* Initialize UART DMA */
    //UART_DMA_Init();

    /* Start the UART Receive Interrupt */
    HAL_UART_Receive_IT(&UART_Handle, &rx_buff, 1);
    //HAL_UART_Receive_DMA(&UART_Handle, &rx_buff, 1);

	for(;;)
	{

	}
}
