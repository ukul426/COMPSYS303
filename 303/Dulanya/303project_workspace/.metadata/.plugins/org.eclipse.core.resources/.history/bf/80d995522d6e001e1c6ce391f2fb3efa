/*
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
#include <unistd.h>
#include <fcntl.h>

int doTick = 0;
// Timer ISR
alt_u32 timer_isr_function(void* context) {
	doTick = 1;
	return 10; // Set the timer to trigger every 10ms
}


int main(){

	TickData model;//create the struct
	reset(&model);//call reset function


    // Open UART for reading and writing
    int uart_fd = open("/dev/uart_device", O_RDWR);

    // Set UART to non-blocking mode
    fcntl(uart_fd, F_SETFL, O_NONBLOCK);

	alt_alarm timer;// TIMER
	alt_alarm_start(&timer, 10, timer_isr_function, NULL);//start the timer, with timeout of 100 milli-seconds


	char AS='A';
	char VS='V';

	while (1) {
		if(doTick) {
			doTick = 0;

			char uart_data;
		     // Non-blocking read from UART
		    int bytes_read = read(uart_fd, &uart_data, 1);

		    if(bytes_read!=0){
		    	if(uart_data=='A'){

		    		model.AS=1;

		    	}else if(uart_data=='V'){

		    		model.VS=1;

		    	}
		    }


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
				write(uart_fd,&AS,1);
			}
			else if(model.VP) {
				printf("VP\n");
				write(uart_fd,&VS,1);
			}


		}
	}

	//close file descriptor
	close(uart_fd);
	return 0;
}
