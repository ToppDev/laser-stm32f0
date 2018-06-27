/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/

#include "main.h"

#include "stm32f0xx.h"
#include "stm32f0xx_hal.h"

#include "dig_io.h"
#include "usart.h"

#include "string.h"

#include "tm_stm32_usart.h"

/**
  * @brief Checks if the @link appState App State @endlink contains an error
  * @retval int True(1) on Error, otherwise False(0)
  */
int isAppStateFailure()
{
    if (appState >= APP_STATE_FAILURE)
        return 1;
    else
        return 0;
}

/**
  * @brief Exit Program
  * @note In Debug Mode here can be set a Breakpoint to Debug Program
  * @retval None
  */
void exitProgram(AppState_t error)
{
    appState = error;

#ifdef DEBUG
    HAL_Delay(1); // Just a line to set a breakpoint on
#else
    DigOut_Lo(LED_BLUE);
    DigOut_Hi(LED_GREEN);

    for(;;)
    {
        DigOut_Toggle(LED_GREEN);
        DigOut_Toggle(LED_BLUE);
        HAL_Delay(100);
    }
#endif
}

int main(void)
{
	/* Initialize Hardware Abstraction Layer */
    if (HAL_Init() != HAL_OK)
        exitProgram(AS_Failure_HAL_Init);

    /* Initialize GPIO Pins and external Interrupts */
    if (DigIO_Init() == DigIO_Result_Error) {
        exitProgram(AS_Failure_DigIO_Init);
    }

	/* Init USART, Pins not initialized yet, 921600 bauds */
	//TM_USART_Init(USART1, TM_USART_PinsPack_Custom, 9600);

    USARTInit();

    //char mybuffer[100];
	uint8_t buffer[4];

	/* Put test string */
	//TM_USART_Puts(USART1, "Hello world\n");

	for(;;)
	{
		HAL_USART_Receive(&USARTInitStruct, buffer, sizeof(buffer), HAL_MAX_DELAY);
		HAL_USART_Transmit(&USARTInitStruct, buffer, sizeof(buffer), HAL_MAX_DELAY);

		//while (!TM_USART_BufferEmpty(USART1)) {
			/* Check if string received */
			/* Waiting for \n at the end of string */
			//if (TM_USART_Gets(USART1, mybuffer, sizeof(mybuffer))) {
				/* Send string back */
				//TM_USART_Puts(USART1, mybuffer);
			//}
		//}

		if (buffer[0] != 127)
		if (!strcmp((char*)buffer, "L1"))
			DigOut_Hi(LED_BLUE);
		//else
		//	DigOut_Lo(LED_BLUE);
	}
}


/* USART Custom pins callback function */
void TM_USART_InitCustomPinsCallback(USART_TypeDef* USARTx, uint16_t AlternateFunction) {
	/* Check for proper USART */
	if (USARTx == USART1) {
		/* Init pins for USART 6 */
		TM_GPIO_InitAlternate(GPIOA, GPIO_PIN_9 | GPIO_PIN_10, TM_GPIO_OType_PP, TM_GPIO_PuPd_UP, TM_GPIO_Speed_Fast, AlternateFunction);
	}
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if (GPIO_Pin == DIG_IO_PIN[BUTTON_USER].GPIO_PIN)
	{
		DigOut_Toggle(LED_BLUE);
	}
}

/*void TM_EXTI_Handler(uint16_t GPIO_Pin)
{
    if (GPIO_Pin == DIG_IO_PIN[BUTTON_USER].GPIO_PIN)
    {
        DigOut_Toggle(LASER);
    }
}
*/
