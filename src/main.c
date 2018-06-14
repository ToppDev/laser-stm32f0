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
    if(DigIO_Init())
        exitProgram(AS_Failure_DigIO_Init);

	for(;;)
	{

	}
}

void TM_EXTI_Handler(uint16_t GPIO_Pin)
{
    if (GPIO_Pin == DIG_IO_PIN[BUTTON_USER].GPIO_PIN)
    {
        DigOut_Toggle(LED_GREEN);
    }
}
