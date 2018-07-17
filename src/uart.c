#include <uart.h>

/* Initializes the UART peripheral */
void UART_Init()
{
	// Enable USART1 clock
	__HAL_RCC_USART1_CLK_ENABLE();

	// Configure UART Handle Init Structure
	UART_Handle.Instance = USART1;
	UART_Handle.Init.BaudRate = 9600;
	UART_Handle.Init.Mode = UART_MODE_TX_RX;
	UART_Handle.Init.Parity = UART_PARITY_NONE;
	UART_Handle.Init.StopBits = UART_STOPBITS_1;
	UART_Handle.Init.WordLength = UART_WORDLENGTH_8B;
	UART_Handle.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	UART_Handle.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;

	// Enable UART Interrupts
    HAL_NVIC_SetPriority(USART1_IRQn, 0x03, 0);
    HAL_NVIC_EnableIRQ(USART1_IRQn);
    HAL_NVIC_ClearPendingIRQ(USART1_IRQn);

    // Initialize UART Handle
	HAL_UART_Init(&UART_Handle);
}

/* This function handles USART1 global interrupts */
void USART1_IRQHandler(void)
{
    HAL_UART_IRQHandler(&UART_Handle);
}

/* Initializes the UART DMA for Receive Interrupts in DMA Mode */
void UART_DMA_Init()
{
    // Enable DMA1 clock
    __HAL_RCC_DMA1_CLK_ENABLE();

    // Configure DMA Handle Init Structure
    DMA_Handle.Instance = DMA1_Channel3;
    DMA_Handle.Init.Direction = DMA_PERIPH_TO_MEMORY;
    DMA_Handle.Init.PeriphInc = DMA_PINC_DISABLE;
    DMA_Handle.Init.MemInc = DMA_MINC_ENABLE;
    DMA_Handle.Init.PeriphDataAlignment = DMA_MDATAALIGN_BYTE;
    DMA_Handle.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    DMA_Handle.Init.Mode = DMA_NORMAL;
    DMA_Handle.Init.Priority = DMA_PRIORITY_HIGH;

    // Initialize DMA Handle
    HAL_DMA_Init(&DMA_Handle);

    // Link the UART DMA pointer and the DMA Handle
    __HAL_LINKDMA(&UART_Handle, hdmarx, DMA_Handle);

    // Enable DMA interrupts
    HAL_NVIC_SetPriority(DMA1_Channel2_3_IRQn, 0x03, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel2_3_IRQn);
    HAL_NVIC_ClearPendingIRQ(DMA1_Channel2_3_IRQn);
}

/* This function handles DMA1 Channel1 global interrupts */
void DMA1_Channel2_3_IRQHandler(void)
{
    HAL_DMA_IRQHandler(&DMA_Handle);
}
