#include <dig_io.h>

/* Private Functions */
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

/* Enable RCC AHB peripheral clock */
void GPIO_EnableClock(GPIO_TypeDef* GPIOx) {
	/* Set bit according to the 1 << portsourcenumber */
	RCC->AHBENR |= (1 << (GPIO_GetPortSource(GPIOx) + 17));
}

/* Initialize GPIO Pin accoridng to parameters */
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

	return DigIO_Result_Ok;
}
