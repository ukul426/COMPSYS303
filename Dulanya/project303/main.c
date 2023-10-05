/*
 * main.c
 *
 *  Created on: 5/10/2023
 *      Author: dwit264
 */

#include "lib/ticktime.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "lib/cJSON.h"

#include "Pacemaker.h"
volatile char* AS;
volatile char* VS;
volatile char* AP;
volatile char* VP;

// The data for the model
TickData model;

double _ticktime;


// Timer ISR
alt_u32 timer_isr_function(void* context) {

	return 100; // Set the timer to trigger every 500ms
}


// ISR for UART receive interrupt
void uart_receive_isr(void* context, alt_u32 id) {

    // Read the received character from UART data register
    char receivedChar = IORD_ALTERA_AVALON_UART_RXDATA(UART_BASE);


    // print the receivedChar
    printf("Received: %c\n", receivedChar);

    // Clear the UART receive interrupt flag
    IOWR_ALTERA_AVALON_UART_STATUS(UART_BASE, 0);
}

int main(int argc, const char* argv[]) {


	alt_alarm timer;

	// Enable global interrupts
	alt_irq_enable_all();

    // Enable UART receiver interrupts
    alt_irq_register(UART_IRQ, NULL, uart_receive_isr);

    //start the timer, with timeout of 100ms
    alt_alarm_start(&timer, 100, timer_isr_function, NULL);


    // Initialize
    reset(&model);


    // Tick loop
    while (1) {

    	 // Read inputs
    	 model.AS =&AS;
    	 model.VS =&VS;


         model.deltaT =

        // Reaction of model
        tick(&model);


        // Send outputs
         &AP= model.AP;
         &VP= model.VP;
    }

}
