#include <stdio.h>
#include <string.h>
#include "system.h"


// ISR for UART receive interrupt
void uart_receive_isr(void* context, alt_u32 id) {

    // Read the received character from UART data register
    char receivedChar = IORD_ALTERA_AVALON_UART_RXDATA(UART_BASE);

    // print the receivedChar
    printf("Received: %c\n", receivedChar);

    // Clear the UART receive interrupt flag
    IOWR_ALTERA_AVALON_UART_STATUS(UART_BASE, 0);
}


int main(void) {

    // Enable global interrupts
    alt_irq_enable_all();

    // Enable UART receiver interrupts
    alt_irq_register(UART_IRQ, NULL, uart_receive_isr);


    while (1) {
        // Main program loop or other tasks
    }

    return 0;
}


