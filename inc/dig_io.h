#ifndef DIG_IO_H_
#define DIG_IO_H_

#include "stm32f0xx_hal.h"

/**
 * @brief DigIO Result enumeration
 */
typedef enum {
	DigIO_Result_Ok = 0x00, /*!< Everything ok */
	DigIO_Result_Error      /*!< An error has occured */
} DigIO_Result_t;

/**
 * @brief DigIO Pin enumeration
 */
typedef enum
{
    LED_GREEN,      ///< Green LED
    LED_BLUE,       ///< Blue LED
	LASER,			///< Laser Pin
	USART_TX,       ///< USART Transmitter
	USART_RX,		///< USART Receiver
} DIG_IO_NAME_t;

/**
 * @brief DigIO Pin structure
 */
typedef struct {
    DIG_IO_NAME_t GPIO_NAME; ///< DigIO Pin Identifier
    GPIO_TypeDef* GPIO_PORT; ///< GPIO Type
    uint32_t GPIO_PIN; ///< GPIO Pin number
    uint32_t GPIO_MODE; ///< IN / OUT / AF / AN
    uint32_t GPIO_PULL; ///< NoPull / PullUp / PullDown
    uint32_t GPIO_SPEED; ///< Low / Medium / High
    GPIO_PinState GPIO_INIT; ///< GPIO bit: SET / RESET
    uint8_t GPIO_AF; ///< GPIO Alternate Function
} DIG_IO_PIN_t;

extern DIG_IO_PIN_t DIG_IO_PIN[];

/**
 * @brief  Initializes all DigIO pins defined in DIG_IO_PIN[]
 * @retval None
 */
DigIO_Result_t DigIO_Init();

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
GPIO_PinState DigIO_Read(DIG_IO_NAME_t dig_pin);

#endif /* DIG_IO_H_ */
