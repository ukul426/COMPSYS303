#include <system.h>
#include <stdio.h>
#include <altera_avalon_pio_regs.h>
#include <alt_types.h>
#include <sys/alt_irq.h>

int count = 0;
FILE *lcd;

// Define the IRQ mask for key0 only
#define KEY0_MASK 0x1

// Function to update the LCD display with the count value
void update_lcd(int value) {
    if (lcd != NULL) {
        #define ESC 27
        #define CLEAR_LCD_STRING "[2J"
        fprintf(lcd, "%c%s", ESC, CLEAR_LCD_STRING);
        fprintf(lcd, "COUNT VALUE: %d\n", value);
    }
}

// ISR for key0
void key0_interrupt_function(void* context, alt_u32 id) {
    // Check if key0 is pressed (bit 0 is set)
    if (IORD_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE) & 0x1) {
        count++;

        // Update the LCD with the new count value
        update_lcd(count);
    }

    // Clear the edge capture register
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0);
}

int main(void) {
    // Clears the edge capture register
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0);

    // Enable interrupt only for key0 (bit 0)
    IOWR_ALTERA_AVALON_PIO_IRQ_MASK(KEYS_BASE, KEY0_MASK);

    // Register the ISR for key0
    alt_irq_register(KEYS_IRQ, NULL, key0_interrupt_function);

    // Initialize the LCD here (send initialization commands) if required
    lcd = fopen(LCD_NAME, "w");
    if (lcd != NULL) {
       #define ESC 27
       #define CLEAR_LCD_STRING "[2J"
    	fprintf(lcd, "%c%s", ESC, CLEAR_LCD_STRING);
    	 fprintf(lcd, "COUNT VALUE: %d\n", count);
    }

    while (1); // Infinite loop to keep the program running

    // Close the LCD file when done
    if (lcd != NULL) {
        fclose(lcd);
    }

    return 0;
}
