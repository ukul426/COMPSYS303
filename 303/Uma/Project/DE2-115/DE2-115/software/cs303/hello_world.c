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

// Function to reset a timer
void resetTimer(alt_alarm* timer, int timeout) {
    alt_alarm_stop(timer);
    alt_alarm_start(timer, timeout, NULL, NULL);
}

// Timer ISRs
alt_u32 AVI_timer_isr(void* context) {
    // Handle AVI timer expiration
    // Implement your logic here
    return 0;
}

alt_u32 AEI_timer_isr(void* context) {
    // Handle AEI timer expiration
    // Implement your logic here
    return 0;
}

alt_u32 PVARP_timer_isr(void* context) {
	context=true;
    // Handle PVARP timer expiration
    // Implement your logic here
    return 0;
}

alt_u32 VRP_timer_isr(void* context) {
	context=true;
    // Handle VRP timer expiration
    // Implement your logic here
    return 0;
}

alt_u32 LRI_timer_isr(void* context) {
    // Handle LRI timer expiration
    // Implement your logic here
    return 0;
}

alt_u32 URI_timer_isr(void* context) {
    // Handle URI timer expiration
    // Implement your logic here
    return 0;
}

int main() {
    alt_alarm AVI_timer, AEI_timer, PVARP_timer, VRP_timer, LRI_timer, URI_timer;



    // Other variables for tracking events and timers
    bool A_event = false;
    bool V_event = false;
    bool inside_URI = false;

    bool AVI_timeout  =true;
    bool PVARP_timeout=true;
    bool AEI_timeout  =true;
    bool VRP_timeout  =true;
    bool LRI_timeout  =true;
    bool URI_timeout  =true;

    void* AVI_context  =(void*) &AVI_timeout;
    void* AEI_context  =(void*) &AEI_timeout;
    void* VRP_context  =(void*) &VRP_timeout;
    void* PVARP_context=(void*) &PVARP_timeout;
    void* LRI_context  =(void*) &LRI_timeout;
    void* URI_context  =(void*) &URI_timeout;

    while (1) {
        // Simulate the arrival of AS and VS signals using keys
        bool AS_signal = IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0x1;
        bool VS_signal = IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0x2;


        //start refractory periods
        if{VS_signal){
        	PVARP_timeout=false;
        	VRP_timeout=false;
        	alt_alarm_start(&PVARP_timer, PVARP_VALUE, PVARP_timer_isr, PVARP_context);
        	alt_alarm_start(&VRP_timer, PVARP_VALUE, PVARP_timer_isr, NULL);
        }

        // produce A & V events
        if ((AS_signal || AP_signal) && PVARP_timeout) {
            A_event = true;
        }
        if ((VS_signal || VP_signal) && VRP_timeout) {
            V_event = true;
        }

        // SCCharts-like logic for handling timers and generating AP and VP signals
        if (A_event) {
        	alt_alarm_start(&AVI_timer, AVI_VALUE, AVI_timer_isr, NULL);

            // Generate AP signal
            // Implement your logic here
        }

        if (V_event) {
        	AVI_timeout=false;
        	 alt_alarm_start(&AVI_timer, AVI_VALUE, AVI_timer_isr,AVI_context );

        }



    }

    return 0;
}
//int doTick = 0;
// Timer ISR
//alt_u32 timer_isr_function(void* context) {
//	doTick = 1;
//	return 10; // Set the timer to trigger every 10ms
//}
//
//
//int main(){
//
//	TickData model;//create the struct
//	reset(&model);//call reset function
//	alt_alarm timer;// TIMER
//	alt_alarm_start(&timer, 10, timer_isr_function, NULL);//start the timer, with timeout of 100 milli-seconds
//
//
//	while (1) {
//		if(doTick) {
//			doTick = 0;
//			// input readings
//			model.AS = (((~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE)) & 0x2) >> 1);
//			model.VS = ((~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE)) & 0x1);
//
//			if(model.AS) {
//				printf("AS\n");
//			}
//			if(model.VS) {
//				printf("VS\n");
//			}
//
//			model.deltaT = 10;
//
//			tick(&model);//call tick function
//
//			if(model.AP) {
//				printf("AP\n");
//				IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0b10);
//			}
//			else if(model.VP) {
//				printf("VP\n");
//				IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0b01);
//			}
//			else {
//				IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0b00);
//			}
//		}
//	}
//
//	return 0;
//}
