/**
 * \file
 * \brief Timer driver
 * \author Erich Styger, erich.styger@hslu.ch
 *
 * This module implements the driver for all our timers.
  */


#include "Platform.h"
#if PL_HAS_TIMER
#include "Timer.h"
#if PL_HAS_LED
  #include "LED.h"
#endif
#if PL_HAS_EVENTS
  #include "Event.h"
#endif
#if PL_HAS_TRIGGER
  #include "Trigger.h"
#endif

#include "TMOUT1.h"

#if PL_HAS_MOTOR_TACHO
  #include "Tacho.h"
#endif

#if PL_HAS_QUADRATURE
 #include "Q4CLeft.h"
 #include "Q4CRight.h"
#endif

void TMR_OnInterrupt(void) {
  /* this one gets called from an interrupt!!!! */
  static int cntr=0;

  cntr++;
  if (cntr==(1000/TMR_TICK_MS)) {
		#if 1 /* setting an event */
	  	  EVNT_SetEvent(EVNT_BLINK_LED);
		#else /* toggling directly the LED */
	  	  	  LED1_Neg();
	  	  	  LED2_Neg();
		#endif
    cntr = 0;
  }

#if PL_HAS_TRIGGER
  TRG_IncTick();
#endif
  TMOUT1_AddTick();


  Q4CRight_Sample();
  Q4CLeft_Sample();


#if PL_HAS_MOTOR_TACHO
  TACHO_Sample();
#endif

}


void TMR_Init(void) {
  /* nothing needed right now */
}

void TMR_Deinit(void) {
  /* nothing needed right now */
}

#endif /*PL_HAS_TIMER*/
