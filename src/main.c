/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f0xx.h"
#include "stm32f0308_discovery.h"

#include "stm32f0xx_hal.h"

void input_conf()
{
	/*GPIO_InitTypeDef GPIO_InitStructure;
	EXTI_InitTypeDef EXTI_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;

	__HAL_RCC_GPIOA_CLK_ENABLE();

	GPIO_InitStructure.Mode = GPIO_MODE_INPUT;
	GPIO_InitStructure.Pin = GPIO_PIN_0;
	GPIO_InitStructure.Pull = GPIO_NOPULL;
	GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_HIGH;

	HAL_GPIO_Init(GPIOA, &GPIO_InitStructure);

	EXTI_InitStructure.EXTI_Line = EXTI_Line0;
	EXTI_InitStructure.EXTI_Mode = EXTI_MODE_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init()

	NVIX_InitStructure.NVIC_IRQChannel = EXTI0_1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC*/
}

void EXTI0_1_IRQHandler(void)
{
	//EXTI_ClearITPendingBit(EXTI_Line0);
}

int main(void)
{
	/* Initialize Hardware Abstraction Layer */
	HAL_Init();

	GPIO_InitTypeDef GPIO_InitStructure;

	__HAL_RCC_GPIOC_CLK_ENABLE();

	GPIO_InitStructure.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStructure.Pin = GPIO_PIN_8 | GPIO_PIN_9;
	GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_HIGH;
	//GPIO_InitStructure.Pull = GPIO_PULLDOWN

	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);

	HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_9);

	// External Interrupt


	for(;;)
	{
		HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_9);
		HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_8);
		HAL_Delay(200);
	}
}
