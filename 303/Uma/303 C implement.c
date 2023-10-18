// Online C compiler to run C program online
#include <stdio.h>
#include <unistd.h>
#include "stdio.h"
#include "system.h"
#include "sys/alt_alarm.h"
#include <altera_avalon_pio_regs.h>
#include <system.h> // to use the symbolic names
#include <altera_avalon_pio_regs.h> // to use PIO functions
#include <alt_types.h> // alt_u32 is a kind of alt_types
#include <sys/alt_irq.h>
// Example timeout values in milliseconds
#define AVI_VALUE 300
#define AEI_VALUE 800
#define PVARP_VALUE 50
#define VRP_VALUE 150
#define LRI_VALUE 950
#define URI_VALUE 900

int AS = 0, VS = 0, AP = 0, VP = 0 ,V_event = 0, VR = 0, A_event = 0, AR = 0;
bool inside_URI = false;
 
void avi_timer_isr(void* context) {
    avi_timer = 1;
}

void aei_timer_isr(void* context) {
    aei_timer = 1;
}


void pvarp_timer_isr(void* context, alt_u32 id) {
    avi_timer = 1;
}

void var_timer_isr(void* context, alt_u32 id) {
    aei_timer = 1;
}

lri_timer_isr(void* context) {
    avi_timer = 1;
}

void uri_timer_isr(void* context) {
    uri_timer = 1;
}





int main() {
    
    
    
    alt_alarm avi_timer, aei_timer, pvarp_timer, var_timer, lri_timer, uri_timer;
    int timeCountMain = 0;

        // Implement state transitions and actions based on current_state
        //AVI
        switch (avi_current_state) {
            case AVI_IDLE:
                if (A_event == 1) {
                    alt_alarm_start(&avi_timer, AVI_VALUE, avi_timer_isr, NULL);
                    current_state = AVI_WAIT;
                }
                break;

            case AVI_WAIT:
                if (V_event == 1) {
                    current_state = AVI_IDLE;
                }else if(avi_timer == 1 && inside_URI== false) {
                    VP = 1;
                    current_state = AVI_IDLE;
                }
                break;
        }
        
        //AEI
         switch (aei_current_state) {
            case AEI_IDLE:
                if (V_event == 1) {
                    alt_alarm_start(&aei_timer, AEI_VALUE, aei_timer_isr, NULL);
                    current_state = AEI_WAIT;
                }
               break;

            case AEI_WAIT:
                if (A_event == 1) {
                    current_state = AEI_IDLE;
                }else if(aei_timer == 1) {
                    AP = 1;
                    current_state = AEI_IDLE;
                }
                break;
        }
        
        //LRI       
        switch (lri_current_state) {
            case LRI_IDLE:
                if (V_event == 1) {
                    alt_alarm_start(&lri_timer, LRI_VALUE, lri_timer_isr, NULL);
                    current_state = LRI_WAIT;
                }
               break;

            case LRI_WAIT:
                if (V_event == 1) {
                    alt_alarm_start(&lri_timer, LRI_VALUE, lri_timer_isr, NULL);
                    current_state = LRI_WAIT;
                }else if(lri_timer == 1) {
                    VP = 1;
                    current_state = LRI_IDLE
                }
                break;
        }       
                
        
        
        //URI       
        switch (uri_current_state) {
            case URI_IDLE:
                if (V_event == 1) {
                    alt_alarm_start(&uri_timer, URI_VALUE, uri_timer_isr, NULL);
                    inside_URI = true;
                    current_state = URI_WAIT;
                }
               break;

            case URI_WAIT:
                if (V_event == 1) {
                    alt_alarm_start(&uri_timer, URI_VALUE, uri_timer_isr, NULL);
                    current_state = URI_WAIT;
                }else if(uri_timer == 1) {
                    inside_URI = false;
                }
                break;
        }            

            


        //PVARP      
        switch (pvarp_current_state) {
            case PVARP_IDLE:
                if (AS == 1 || AP == 1) {
                    A_event = 1;
                    current_state = PVARP_IDLE;
                }else if(VS == 1 || VP == 1){
                    alt_alarm_start(&pvarp_timer, PVARP_VALUE, pvarp_timer_isr, NULL);
                    current_state = PVARP_BLOCK;
                }
               break;

            case PVARP_BLOCK:
                if (AS == 1) {
                    AR = 1;
                    current_state = PVARP_BLOCK;
                }else if(pvarp_timer == 1) {
                    current_state = PVARP_IDLE;
                }
                break;
        } 

        //VRP      
        switch (vrp_current_state) {
            case VAR_IDLE:
                if (VS == 1|| VP == 1) {
                    V_event = 1;
                    alt_alarm_start(&var_timer, VRP_VALUE, var_timer_isr, NULL);
                    current_state = VAR_BLOCK;
                }
               break;

            case VAR_BLOCK:
                if (VS == 1) {
                    VR = 1;
                    current_state = VAR_BLOCK;
                }else if(vrp_timer == 1) {
                    current_state = VAR_IDLE;
                }
                break;
        } 


            
        // Sleep to simulate time passing
        usleep(1000);
    }
    
  

    return 0;
}