/**
  * @file dig_io.h
  * @author Thomas Topp
  * @date 14 March 2018
  * @brief Definition of Used Pins and Functions to use them
  */

#ifndef DIG_IO_H_
#define DIG_IO_H_

#include "stm32f0xx_hal.h"
#include "tm_stm32_gpio.h"
#include "tm_stm32_exti.h"

/**
 * @brief DigIO Pin enumeration
 */
typedef enum
{
    LED_GREEN,      ///< Green LED
    LED_BLUE,       ///< Blue LED
    BUTTON_USER,    ///< User Button
} DIG_IO_NAME_t;

/**
 * @brief DigIO Pin structure
 */
typedef struct {
    DIG_IO_NAME_t GPIO_NAME; ///< DigIO Pin Identifier
    GPIO_TypeDef* GPIO_PORT; ///< GPIO Type
    uint16_t GPIO_PIN; ///< GPIO Pin number
    TM_GPIO_Mode_t GPIO_MODE; ///< IN / OUT / AF / AN
    TM_GPIO_OType_t GPIO_OTYPE; ///< Push-Pull / Open-Drain
    TM_GPIO_PuPd_t GPIO_PULL; ///< NoPull / PullUp / PullDown
    TM_GPIO_Speed_t GPIO_SPEED; ///< Low / Medium / High
    GPIO_PinState GPIO_INIT; ///< GPIO bit: SET / RESET
    TM_EXTI_Trigger_t EXTI_Trigger; ///< Falling / Rising / Any
} DIG_IO_PIN_t;

extern DIG_IO_PIN_t DIG_IO_PIN[];

/**
 * @brief  Initializes all DigIO pins defined in DIG_IO_PIN[]
 * @retval None
 */
int DigIO_Init();

/**
 * @brief  Sets the given DigIO Pin Low
 * @param  dig_pin: Pin to set
 * @retval None
 */
void DigOut_Lo(DIG_IO_NAME_t dig_pin);

/**
 * @brief  Sets the given DigIO Pin High
 * @param  dig_pin: Pin to set
 * @retval None
 */
void DigOut_Hi(DIG_IO_NAME_t dig_pin);

/**
 * @brief  Toggles the given DigIO Pin
 * @param  dig_pin: Pin to set
 * @retval None
 */
void DigOut_Toggle(DIG_IO_NAME_t dig_pin);

/**
 * @brief  Sets the given DigIO Pin to the given state
 * @param  dig_pin: Pin to set
 * @param  pinState: State to set the pin to
 * @retval None
 */
void DigOut_Set(DIG_IO_NAME_t dig_pin, GPIO_PinState pinState);

/**
 * @brief  Reads the GPIO state of the given DigIO Pin
 * @param  dig_pin: Pin to read from
 * @retval Pin GPIO state
 */
GPIO_PinState DigIn_Read(DIG_IO_NAME_t dig_pin);

#endif /* DIG_IO_H_ */
