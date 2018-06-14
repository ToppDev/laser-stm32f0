/**
  * @file dig_io.c
  * @author Thomas Topp
  * @date 14 June 2018
  * @brief Definition of Used Pins and Functions to use them
  */

#include <dig_io.h>

/// Digital Input and Output Pin Definition Array
DIG_IO_PIN_t DIG_IO_PIN[] = {
  // Name,           PORT,  PIN,         Mode,             Output type,      Pull resistor,       Speed,              Init,           Trigger
    {LED_GREEN,      GPIOC, GPIO_PIN_9,  TM_GPIO_Mode_OUT, TM_GPIO_OType_PP, TM_GPIO_PuPd_NOPULL, TM_GPIO_Speed_High, GPIO_PIN_RESET},
    {LED_BLUE,       GPIOC, GPIO_PIN_8,  TM_GPIO_Mode_OUT, TM_GPIO_OType_PP, TM_GPIO_PuPd_DOWN,   TM_GPIO_Speed_High, GPIO_PIN_RESET},
    {BUTTON_USER,    GPIOA, GPIO_PIN_0,  TM_GPIO_Mode_IN,  TM_GPIO_OType_PP, TM_GPIO_PuPd_DOWN,   TM_GPIO_Speed_High, GPIO_PIN_RESET, TM_EXTI_Trigger_Falling},
};

/* Initialization of all Digital-Out Pins */
int DigIO_Init()
{
    DIG_IO_NAME_t dig_pin;
    int dig_out_count = sizeof(DIG_IO_PIN)/sizeof(DIG_IO_PIN[0]);

    for (dig_pin = 0; dig_pin < dig_out_count; dig_pin++)
    {
        if (DIG_IO_PIN[dig_pin].GPIO_MODE == TM_GPIO_Mode_IN && DIG_IO_PIN[dig_pin].EXTI_Trigger != -1)
        {
            TM_EXTI_Result_t TM_EXTI_Result = TM_EXTI_Attach(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN,
        				                                       DIG_IO_PIN[dig_pin].EXTI_Trigger, DIG_IO_PIN[dig_pin].GPIO_PULL);
            if (TM_EXTI_Result != TM_EXTI_Result_Ok)
                return 1;
        }
        else
        	TM_GPIO_Init(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN,
                    DIG_IO_PIN[dig_pin].GPIO_MODE, DIG_IO_PIN[dig_pin].GPIO_OTYPE,
                    DIG_IO_PIN[dig_pin].GPIO_PULL, DIG_IO_PIN[dig_pin].GPIO_SPEED);

        // Default Value
        if (DIG_IO_PIN[dig_pin].GPIO_MODE != TM_GPIO_Mode_IN)
            DigOut_Set(dig_pin, DIG_IO_PIN[dig_pin].GPIO_INIT);
    }
    return 0;
}

/* Digital-Out Pin to Low */
void DigOut_Lo(DIG_IO_NAME_t dig_pin)
{
	TM_GPIO_SetPinLow(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN);
}

/* Digital-Out Pin to High */
void DigOut_Hi(DIG_IO_NAME_t dig_pin)
{
	TM_GPIO_SetPinHigh(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN);
}

/* Digital-Out Pin toggle */
void DigOut_Toggle(DIG_IO_NAME_t dig_pin)
{
	TM_GPIO_TogglePinValue(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN);
}

/* Digital-Out Pin to Low or High */
void DigOut_Set(DIG_IO_NAME_t dig_pin, GPIO_PinState pinState)
{
	TM_GPIO_SetPinValue(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN, pinState);
}

/* Read PinState of Digital-In Pin */
GPIO_PinState DigIn_Read(DIG_IO_NAME_t dig_pin)
{
	return TM_GPIO_GetInputPinValue(DIG_IO_PIN[dig_pin].GPIO_PORT, DIG_IO_PIN[dig_pin].GPIO_PIN);
    //return HAL_GPIO_ReadPin(DIG_IN_OUT_PIN[dig_pin].GPIO_PORT, DIG_IN_OUT_PIN[dig_pin].GPIO_PIN);
}
