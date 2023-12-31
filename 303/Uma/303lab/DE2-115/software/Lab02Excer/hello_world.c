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
#include <unistd.h>;
#include "stdio.h"
#include "sys/alt_alarm.h"
#include <altera_avalon_pio_regs.h>
#include <system.h> // to use the symbolic names
#include <altera_avalon_pio_regs.h> // to use PIO functions
#include <alt_types.h> // alt_u32 is a kind of alt_types
#include <sys/alt_irq.h>

int AVI_timer = 0;
int PVARP_timer = 0;
int VRP_timer = 0;
int AEI_timer = 0;
int LRI_timer = 0;
int URI_timer = 0;

volatile int counter = 0;
volatile int key1_pressed = 0;

// Function to increment the counter
void incrementCounter() {
	counter++;
}

// Timer ISR
alt_u32 timer_isr_function(void* context) {
	int* timeCount = (int*) context;

	// Check if Key1 is pressed and held down
	if (key1_pressed) {
		incrementCounter();
		printf("Counter2: %i\n",counter);
	}
	return 500; // Set the timer to trigger every 500ms
}


// Button ISR
void key_button_interrupts(void* context, alt_u32 id) {
	int* temp = (int*) context;
	(*temp) = IORD_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE);
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0);

	if ((*temp) & 0x01) {
		// Key0 pressed
		incrementCounter();
		printf("Counter1: %i\n",counter);
	}

	if ((*temp) & 0x02) {
		// Key1 pressed
		key1_pressed = 1;
	} else {
		// Key1 released
		key1_pressed = 0;
	}
}


int main(void) {

	alt_alarm timer;
	int timeCountMain = 0;
	void* timerContext = (void*) &timeCountMain;


	//start the timer, with timeout of 1000 milli-seconds
	alt_alarm_start(&timer, 500, timer_isr_function, timerContext);

	int counterValue = 0;
	void* context_going_to_be_passed = (void*) &counterValue;

	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0);
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(KEYS_BASE, 0x7);

	alt_irq_register(KEYS_IRQ, context_going_to_be_passed, key_button_interrupts);

	printf("Hello");


	while (1);
	return 0;
}

