/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <unistd.h>
#include "stdio.h"
#include "system.h"
#include "sys/alt_alarm.h"
#include <altera_avalon_pio_regs.h>
#include <system.h> // to use the symbolic names
#include <altera_avalon_pio_regs.h> // to use PIO functions
#include <alt_types.h> // alt_u32 is a kind of alt_types
#include <sys/alt_irq.h>
#include "pacemaker.h"

int doTick = 0;
// Timer ISR
alt_u32 timer_isr_function(void* context) {
	//int* timeCount = (int*) context;

	// deltaT update with the time since last timer interrupt (100 microseconds)
	doTick = 1;
	return 10; // Set the timer to trigger every 100ms
}


int main(){

	TickData model;//create the struct
	reset(&model);//call reset function
	alt_alarm timer;// TIMER
	alt_alarm_start(&timer, 10, timer_isr_function, NULL);//start the timer, with timeout of 100 milli-seconds


	while (1) {
		if(doTick) {
			doTick = 0;
			// input readings
			model.AS = (((~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE)) & 0x2) >> 1);
			model.VS = ((~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE)) & 0x1);

			if(model.AS) {
				printf("AS\n");
			}
			if(model.VS) {
				printf("VS\n");
			}

			model.deltaT = 10;

			tick(&model);//call tick function

			if(model.AP) {
				printf("AP\n");
				IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0b10);
			}
			else if(model.VP) {
				printf("VP\n");
				IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0b01);
			}
			else {
				IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0b00);
			}
		}
	}

	return 0;
}
