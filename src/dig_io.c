/**
  * @file dig_io.c
  * @author Thomas Topp
  * @date 14 June 2018
  * @brief Definition of Used Pins and Functions to use them
  */

#include <dig_io.h>

/* Private Functions */
#define EXTI_MODE (0x10000000U)
GPIO_PinState DigIn_Read(DIG_IO_NAME_t dig_pin);
GPIO_PinState DigOut_Read(DIG_IO_NAME_t dig_pin);
uint16_t GPIO_GetPortSource(GPIO_TypeDef* GPIOx);
void GPIO_EnableClock(GPIO_TypeDef* GPIOx);
DigIO_Result_t GPIO_Init(GPIO_TypeDef* GPIOx, uint32_t GPIO_Pin, uint32_t GPIO_Mode, uint32_t GPIO_PuPd, uint32_t GPIO_Speed, uint8_t GPIO_AF);

/// Digital Input and Output Pin Definition Array
DIG_IO_PIN_t DIG_IO_PIN[] = {
  // Name,           PORT,  PIN,         Mode,                 Pull resistor, Speed,                Init
    {LED_GREEN,      GPIOC, GPIO_PIN_9,  GPIO_MODE_OUTPUT_PP,  GPIO_NOPULL,   GPIO_SPEED_FREQ_HIGH, GPIO_PIN_RESET},
    {LED_BLUE,       GPIOC, GPIO_PIN_8,  GPIO_MODE_OUTPUT_PP,  GPIO_NOPULL,   GPIO_SPEED_FREQ_HIGH, GPIO_PIN_RESET},
    {BUTTON_USER,    GPIOA, GPIO_PIN_0,  GPIO_MODE_IT_FALLING, GPIO_PULLDOWN, GPIO_SPEED_FREQ_HIGH, GPIO_PIN_RESET},
    {LASER,		     GPIOB, GPIO_PIN_1,  GPIO_MODE_OUTPUT_PP,  GPIO_NOPULL,   GPIO_SPEED_FREQ_HIGH, GPIO_PIN_RESET},
    {USART_TX,	     GPIOA, GPIO_PIN_9,  GPIO_MODE_AF_PP,  	   GPIO_PULLUP,   GPIO_SPEED_FREQ_HIGH, GPIO_PIN_RESET, GPIO_AF1_USART1},
    {USART_RX,	     GPIOA, GPIO_PIN_10, GPIO_MODE_AF_PP,      GPIO_PULLUP,   GPIO_SPEED_FREQ_HIGH, GPIO_PIN_RESET, GPIO_AF1_USART1},
};

/* Initialization of all Digital-Out Pins */
DigIO_Result_t DigIO_Init()
{
    DIG_IO_NAME_t dig_pin;
    int dig_out_count = sizeof(DIG_IO_PIN)/sizeof(DIG_IO_PIN[0]);

    for (dig_pin = 0; dig_pin < dig_out_count; dig_pin++)
    {
        /*if (DIG_IO_PIN[dig_pin].GPIO_MODE == GPIO_MODE_INPUT && DIG_IO_PIN[dig_pin].EXTI_Trigger != -1)
        {
            TM_EXTI_Result_t TM_EXTI_Result = TM_EXTI_Attach(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN,
        				                                       DIG_IO_PIN[dig_pin].EXTI_Trigger, DIG_IO_PIN[dig_pin].GPIO_PULL);
            if (TM_EXTI_Result != TM_EXTI_Result_Ok)
                return DigIO_Result_Error;
        }
        else*/
        	GPIO_Init(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN,
                    DIG_IO_PIN[dig_pin].GPIO_MODE, DIG_IO_PIN[dig_pin].GPIO_PULL,
					DIG_IO_PIN[dig_pin].GPIO_SPEED, DIG_IO_PIN[dig_pin].GPIO_AF);

        // Default Value
        if (DIG_IO_PIN[dig_pin].GPIO_MODE == GPIO_MODE_OUTPUT_PP || DIG_IO_PIN[dig_pin].GPIO_MODE == GPIO_MODE_OUTPUT_OD)
            DigOut_Set(dig_pin, DIG_IO_PIN[dig_pin].GPIO_INIT);
    }
    return DigIO_Result_Ok;
}

/* Digital-Out Pin to Low */
void DigOut_Lo(DIG_IO_NAME_t dig_pin)
{
	HAL_GPIO_WritePin(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN, GPIO_PIN_RESET);
}

/* Digital-Out Pin to High */
void DigOut_Hi(DIG_IO_NAME_t dig_pin)
{
	HAL_GPIO_WritePin(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN, GPIO_PIN_SET);
}

/* Digital-Out Pin toggle */
void DigOut_Toggle(DIG_IO_NAME_t dig_pin)
{
	HAL_GPIO_TogglePin(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN);
}

/* Digital-Out Pin to Low or High */
void DigOut_Set(DIG_IO_NAME_t dig_pin, GPIO_PinState pinState)
{
	HAL_GPIO_WritePin(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN, pinState);
}

/* Read PinState of Digital Input/Output Pin */
GPIO_PinState DigIO_Read(DIG_IO_NAME_t dig_pin)
{
	if (DIG_IO_PIN[dig_pin].GPIO_MODE == GPIO_MODE_OUTPUT_PP || DIG_IO_PIN[dig_pin].GPIO_MODE == GPIO_MODE_OUTPUT_OD)
		return DigOut_Read(dig_pin);
	else
		return DigIn_Read(dig_pin);
}

/* ############################################## Private Functions ############################################## */

/* Read PinState of Digital-In Pin */
GPIO_PinState DigIn_Read(DIG_IO_NAME_t dig_pin)
{
	return ((DIG_IO_PIN[dig_pin].GPIO_PORT)->IDR & (DIG_IO_PIN[dig_pin].GPIO_PIN)) == 0 ? 0 : 1;
}

/* Read PinState of Digital-Out Pin */
GPIO_PinState DigOut_Read(DIG_IO_NAME_t dig_pin)
{
	return ((DIG_IO_PIN[dig_pin].GPIO_PORT)->ODR & (DIG_IO_PIN[dig_pin].GPIO_PIN)) == 0 ? 0 : 1;
}

/* Get port source number */
uint16_t GPIO_GetPortSource(GPIO_TypeDef* GPIOx)
{
	/* Offset from GPIOA                       Difference between 2 GPIO addresses */
	return ((uint32_t)GPIOx - (GPIOA_BASE)) / ((GPIOB_BASE) - (GPIOA_BASE));
}

void GPIO_EnableClock(GPIO_TypeDef* GPIOx) {
	/* Set bit according to the 1 << portsourcenumber */
	RCC->AHBENR |= (1 << (GPIO_GetPortSource(GPIOx) + 17));
}

DigIO_Result_t GPIO_Init(GPIO_TypeDef* GPIOx, uint32_t GPIO_Pin, uint32_t GPIO_Mode, uint32_t GPIO_PuPd, uint32_t GPIO_Speed, uint8_t GPIO_AF)
{
	GPIO_EnableClock(GPIOx);

	GPIO_InitTypeDef GPIO_InitStruct;

	GPIO_InitStruct.Pin = GPIO_Pin;
	GPIO_InitStruct.Mode = GPIO_Mode;
	GPIO_InitStruct.Pull = GPIO_PuPd;
	GPIO_InitStruct.Speed = GPIO_Speed;
	GPIO_InitStruct.Alternate = GPIO_AF;

	HAL_GPIO_Init(GPIOx, &GPIO_InitStruct);

	if ((GPIO_Mode & EXTI_MODE) == EXTI_MODE)
	{
		IRQn_Type irqchannel;
		/* Get IRQ channel */
		switch (GPIO_Pin) {
			case GPIO_PIN_0:
			case GPIO_PIN_1:
				irqchannel = EXTI0_1_IRQn;
				break;
			case GPIO_PIN_2:
			case GPIO_PIN_3:
				irqchannel = EXTI2_3_IRQn;
				break;
			case GPIO_PIN_4:
			case GPIO_PIN_5:
			case GPIO_PIN_6:
			case GPIO_PIN_7:
			case GPIO_PIN_8:
			case GPIO_PIN_9:
			case GPIO_PIN_10:
			case GPIO_PIN_11:
			case GPIO_PIN_12:
			case GPIO_PIN_13:
			case GPIO_PIN_14:
			case GPIO_PIN_15:
				irqchannel = EXTI4_15_IRQn;
				break;
			default:
				return DigIO_Result_Error;
		}


		/* Add to NVIC */
		HAL_NVIC_SetPriority(irqchannel, EXTI_NVIC_PRIORITY, 0);
		/* Enable interrupt */
		HAL_NVIC_EnableIRQ(irqchannel);
		/* Clear Pending Bits */
		HAL_NVIC_ClearPendingIRQ(irqchannel);
	}

	return DigIO_Result_Ok;
}

void EXTI0_1_IRQHandler(void) {
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR0)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_0);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR1)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_1);
	}
}

void EXTI2_3_IRQHandler(void) {
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR2)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_2);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR3)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_3);
	}
}
void EXTI4_15_IRQHandler(void) {
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR4)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_4);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR5)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_5);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR6)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_6);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR7)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_7);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR8)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_8);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR9)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_9);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR10)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_10);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR11)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_11);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR12)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_12);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR13)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_13);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR14)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_14);
	}
	/* Check status */
	if (EXTI->PR & (EXTI_PR_PR15)) {
		/* Call global function */
		HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_15);
	}
}
