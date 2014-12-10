/*!
 * Application.c
 *
 *  Created on: 26.09.2014
 *      Author: tbsimmen
 *
 * This module is the main application module.
 * From here the application runs and performs all tasks.
 */


#include "Platform.h"
#include "Application.h"
#include "WAIT1.h"

#if PL_HAS_LED
  #include "LED.h"
#endif
#if PL_HAS_EVENTS
  #include "Event.h"
#endif
#if PL_HAS_MEALY
  #include "Mealy.h"
#endif
#if PL_HAS_KEYS
  #include "Keys.h"
#endif
#if PL_HAS_SHELL
  #include "Shell.h"
#endif
#if PL_HAS_BUZZER
  #include "Buzzer.h"
#endif
#if PL_HAS_RTOS
  #include "RTOS.h"
  #include "FRTOS1.h"
#endif
#if PL_HAS_RTOS_TRACE
  #include "RTOSTRC1.h"
#endif
#if PL_HAS_ACCEL
  #include "Accel.h"
  #include "MMA1.h"
#endif
#if PL_HAS_MOTOR
  #include "Motor.h"
#endif
#if PL_HAS_DRIVE
#include "Drive.h"
#include "Q4CLeft.h"
#include "Q4CRight.h"
#endif
#if PL_HAS_ULTRASONIC
#include "Ultrasonic.h"
#endif
#if PL_HAS_REMOTE
  #include "Remote.h"
#endif
#if PL_HAS_REFLECTANCE
  #include "Reflectance.h"
#endif

uint8_t buf[16];
uint16_t cm, us, count, acount;
bool enemyfound= FALSE;
bool manualSumo = FALSE;
TaskHandle_t xHandle = NULL;

static xSemaphoreHandle mutexAppHandle;

typedef enum {
  SUMO_STATE_INIT,
  SUMO_STATE_HAUNTING,
  SUMO_STATE_TURNING,
  SUMO_STATE_SEARCHING,
} SUMOStateType;

static volatile SUMOStateType sumoState = SUMO_STATE_INIT; /* state machine state */



void APP_DebugPrint(unsigned char *str) {
#if PL_HAS_SHELL
  CLS1_SendStr(str, CLS1_GetStdio()->stdOut);
#endif
}



#if 1
	void HandleEvents(void){
	if(EVNT_EventIsSetAutoClear(EVNT_INIT)){
		#if PL_HAS_BUZZER
				//  BUZ_Beep(800, 1000);
		#endif
			  LED1_On();
			  WAIT1_Waitms(100);
			  LED1_Off();
			  LED2_On();
			  WAIT1_Waitms(100);
			  LED2_Off();
			  LED3_On();
			  WAIT1_Waitms(100);
			  LED3_Off();
			  WAIT1_Waitms(200);
			  LED1_On();
			  LED2_On();
			  LED3_On();
			  WAIT1_Waitms(200);
			  LED1_Off();
			  LED2_Off();
			  LED3_Off();
	}else if (EVNT_EventIsSetAutoClear(EVENT_LED_HEARTBEAT)) {
	    LED2_Neg();
	}else if (EVNT_EventIsSetAutoClear(EVNT_BLINK_LED)) {
		    LED1_Neg();
	#if PL_NOF_KEYS >= 1
		} else if (EVNT_EventIsSetAutoClear(EVNT_SW1_PRESSED)) {
		#if PL_HAS_SHELL
			SHELL_SendString("SW1 pressed!\r\n");
		#endif
		#if PL_IS_ROBO
			if(manualSumo == FALSE){ //StarteSumoFight
				FRTOS1_vTaskDelete(xHandle);
				BUZ_Beep(300, 500);
				AutoSumoInit();
			}else{
				BUZ_Beep(900,50);
				FRTOS1_vTaskDelay(51/portTICK_RATE_MS);
				BUZ_Beep(900,50);
			}
		#endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW1_LPRESSED)) {
		#if PL_HAS_SHELL
			  SHELL_SendString("SW1 long pressed!\r\n");
		#endif
		#if PL_IS_ROBO //Starte Reflectance Kalibration
			  REF_CalibrateStartStop();
		#endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW1_RELEASED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW1 released!\r\n");
		  #endif
	#endif
	#if PL_NOF_KEYS >= 2
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW2_PRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW2 pressed!\r\n");
		  #endif
		  #if PL_HAS_BUZZER
			BUZ_Beep(300, 500);
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW2_LPRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW2 long pressed!\r\n");
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW2_RELEASED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW2 released!\r\n");
		  #endif
	#endif
	#if PL_NOF_KEYS >= 3
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW3_PRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW3 pressed!\r\n");
		  #endif
		  #if PL_HAS_BUZZER
			BUZ_Beep(300, 500);
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW3_LPRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW3 long pressed!\r\n");
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW3_RELEASED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW3 released!\r\n");
		  #endif
	#endif
	#if PL_NOF_KEYS >= 4
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW4_PRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW4 pressed!\r\n");
		  #endif
		  #if PL_HAS_BUZZER
			BUZ_Beep(300, 500);
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW4_LPRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW4 long pressed!\r\n");
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW4_RELEASED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW4 released!\r\n");
		  #endif
	#endif
	#if PL_NOF_KEYS >= 5
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW5_PRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW5 pressed!\r\n");
		  #endif
		  #if PL_HAS_BUZZER
			BUZ_Beep(300, 500);
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW5_LPRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW5 long pressed!\r\n");
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW5_RELEASED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW5 released!\r\n");
		  #endif
	#endif
	#if PL_NOF_KEYS >= 6
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW6_PRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW6 pressed!\r\n");
		  #endif
		  #if PL_HAS_BUZZER
			  BUZ_Beep(300, 500);
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW6_LPRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW6 long pressed!\r\n");
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW6_RELEASED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW6 released!\r\n");
		  #endif
	#endif
	#if PL_NOF_KEYS >= 7
			} else if (EVNT_EventIsSetAutoClear(EVNT_SW7_PRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW7 pressed!\r\n");
		  #endif
		  #if PL_HAS_BUZZER
			BUZ_Beep(300, 500);
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW7_LPRESSED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW7 long pressed!\r\n");
		  #endif
		  #if PL_HAS_REMOTE
				if (REMOTE_GetOnOff()) {
				  REMOTE_SetOnOff(FALSE);
				#if PL_HAS_SHELL
				  SHELL_SendString("Remote is now OFF!\r\n");
				#endif
				} else {
				  REMOTE_SetOnOff(TRUE);
				#if PL_HAS_SHELL
				  SHELL_SendString("Remote is now ON!\r\n");
				#endif
				}
		  #endif
		  } else if (EVNT_EventIsSetAutoClear(EVNT_SW7_RELEASED)) {
		  #if PL_HAS_SHELL
			SHELL_SendString("SW7 released!\r\n");
		  #endif
	#endif
	  }
}
#else
	static void APP_EventHandler(EVNT_Handle event) {
		switch(event) {
			case EVNT_INIT:
				#if PL_HAS_BUZZER
				//  BUZ_Beep(500, 1000);
				#endif
			  LED1_On();
			  WAIT1_Waitms(100);
			  LED1_Off();
			  LED2_On();
			  WAIT1_Waitms(100);
			  LED2_Off();
			  LED3_On();
			  WAIT1_Waitms(100);
			  LED3_Off();
			  WAIT1_Waitms(200);
			  LED1_On();
			  LED2_On();
			  LED3_On();
			  WAIT1_Waitms(200);
			  LED1_Off();
			  LED2_Off();
			  LED3_Off();
			  break;
			case EVENT_LED_HEARTBEAT:
			  LED2_Neg();
			  break;
			case EVNT_BLINK_LED:
				LED1_Neg();
				break;
		#if PL_NOF_KEYS >= 1
			case EVNT_SW1_PRESSED:
			  lastKeyPressed = 1;
		  #if PL_HAS_SHELL
			  SHELL_SendString("SW1 pressed!\r\n");
		  #endif
		  #if PL_HAS_BUZZER
			  BUZ_Beep(300, 500);
		  #endif
			  break;
			case EVNT_SW1_LPRESSED:
		  #if PL_HAS_SHELL
			  SHELL_SendString("SW1 long pressed!\r\n");
		  #endif
			  break;
			case EVNT_SW1_RELEASED:
		  #if PL_HAS_SHELL
			  SHELL_SendString("SW1 released!\r\n");
		  #endif
			  break;
		#endif
		#if PL_NOF_KEYS >= 2
			case EVNT_SW2_PRESSED:
			  lastKeyPressed = 2;
		#if PL_HAS_SHELL
			  SHELL_SendString("SW2 pressed!\r\n");
		#endif
			  break;
		#endif
		#if PL_NOF_KEYS >= 3
			case EVNT_SW3_PRESSED:
			  lastKeyPressed = 3;
		#if PL_HAS_SHELL
			  SHELL_SendString("SW3 pressed!\r\n");
		#endif
			  break;
		#endif
		#if PL_NOF_KEYS >= 4
			case EVNT_SW4_PRESSED:
			  lastKeyPressed = 4;
		#if PL_HAS_SHELL
			  SHELL_SendString("SW4 pressed!\r\n");
		#endif
			  break;
		#endif
		#if PL_NOF_KEYS >= 5
			case EVNT_SW5_PRESSED:
			  lastKeyPressed = 5;
		#if PL_HAS_SHELL
			  SHELL_SendString("SW5 pressed!\r\n");
		#endif
			  break;
		#endif
		#if PL_NOF_KEYS >= 6
			case EVNT_SW6_PRESSED:
			  lastKeyPressed = 6;
		#if PL_HAS_SHELL
			  SHELL_SendString("SW6 pressed!\r\n");
		#endif
			  break;
		#endif
		#if PL_NOF_KEYS >= 7
			case EVNT_SW7_PRESSED:
			  lastKeyPressed = 7;
		#if PL_HAS_SHELL
			  SHELL_SendString("SW7 pressed!\r\n");
		#endif
			  break;
		#endif
			default:
			  break;
		  }
		}
#endif

#if PL_HAS_ACCEL_STOP
	static void APP_CheckAccelRobotStop(void) {

		//if((((MMA1_GetYmg() > 300) || (MMA1_GetYmg() < -300)|| (MMA1_GetXmg() > 300) || (MMA1_GetXmg() < -300)) && (MMA1_GetZmg() < 800)) || (MMA1_GetZmg() < 0)) {
		if(((MMA1_GetZmg() < 700)) || (MMA1_GetZmg() < 0)) {

			if(acount >= 2){
				acount = 0;
				#if PL_HAS_BUZZER
					//BUZ_Beep(400,50);
					LED2_On();
				#endif
				#if PL_HAS_DRIVE
					DRV_EnableDisable(FALSE);
				#endif
				#if PL_HAS_LED
					#if PL_IS_FRDM
						//LED3_On();
						//LED2_On();
					#else
						// LED2_On();
					#endif
				#endif
			}else{
				acount = acount + 1;
			}

		}else{
			acount = 0;
			#if PL_HAS_DRIVE
				DRV_EnableDisable(TRUE);
			#endif
			#if PL_HAS_LED
				#if PL_IS_FRDM
					//LED3_Off();
					//LED2_Off();
				#else
					LED2_Off();
				#endif
			#endif
		}
	}
#endif

#if PL_HAS_RTOS
	static void AppTask(void *pvParameters) {
		(void)pvParameters; /* not used */
		#if PL_HAS_SHELL
			//CLS1_SendStr("Hello World!\r\n", CLS1_GetStdio()->stdOut);
		#endif

	  //ACCEL verwendet I2C. I2C verwendet interrupts. Diese sind bei'Normalen'
	  //Init noch nicht eingeschaltet. Darum hier Initialisieren.
		#if PL_HAS_ACCEL /* need to initialize accelerometer from a task (interrupts enabled). */
			//ACCEL_LowLevelInit();
		#endif

		for(;;) {
			#if PL_HAS_EVENTS
				#if 1
					HandleEvents();
				#else
					EVNT_HandleEvent(APP_EventHandler); /* handle pending events */
				#endif
				//EVNT_SetEvent(EVNT_BLINK_LED);
			#endif

			#if PL_HAS_KEYS && PL_NOF_KEYS>0
				KEY_Scan(); /* scan keys */
			#endif

			#if PL_HAS_MEALY
				MEALY_Step();
			#endif


			#if PL_HAS_ACCEL_STOP
				APP_CheckAccelRobotStop();
			#endif

		//	#if PL_HAS_KEYS && PL_NOF_KEYS>0
			//	KEY_Scan(); /* scan keys */
			//#endif

			FRTOS1_vTaskDelay(200/portTICK_RATE_MS);
	  }
	}
#else
	static void APP_Loop(void) {
	  int i;

	#if PL_HAS_SHELL
	  CLS1_SendStr("Hello World!\r\n", CLS1_GetStdio()->stdOut);
	#endif
	  for(;;) {
	#if PL_HAS_EVENTS
		EVNT_HandleEvent(APP_EventHandler); /* handle pending events */
	#endif
	#if PL_HAS_KEYS && PL_NOF_KEYS>0
		KEY_Scan(); /* scan keys */
	#endif
	#if PL_HAS_MEALY
		MEALY_Step();
	#endif
		WAIT1_Waitms(100);
	  }
	}
#endif


/* SUMO FIGHT IMPLEMENTATION */
/*-----------------------------------------*/
#if PL_IS_ROBO
	static portTASK_FUNCTION(SumoTask, pvParameters) {
	  (void)pvParameters; /* parameter not used */


	  uint16_t dist;
	  int i=0;
	  int iter = 0;
	  bool lastenemy;

	 for(;;){

		  switch (sumoState) {
			   case SUMO_STATE_INIT:
				 DRV_EnableDisable(TRUE);

				 FRTOS1_vTaskDelay(5000/portTICK_RATE_MS);

				 if(enemyfound == TRUE){ //Objekt erkannt
					 sumoState = SUMO_STATE_HAUNTING;
				 }else{
					 sumoState = SUMO_STATE_SEARCHING;
				 }
				 break;

			   case SUMO_STATE_HAUNTING:
				   lastenemy = TRUE;
				  while(sumoState == SUMO_STATE_HAUNTING){
					   if((enemyfound == TRUE)){
						   for(i=0;i<6;i++) {  	//nicht runterfallen!
								 if(SensorValue(i) < 500){
									sumoState = SUMO_STATE_TURNING;
									break;
								 } else{
									DRV_SetSpeed(6500,5500);
								 }
						   }
					   }else{
						   sumoState = SUMO_STATE_SEARCHING;
					   }
					   FRTOS1_vTaskDelay(5/portTICK_RATE_MS);
				  }

				   break;

			   case SUMO_STATE_TURNING:

					DRV_SetSpeed(-8000,-8000);
					FRTOS1_vTaskDelay(300/portTICK_RATE_MS);
					DRV_SetSpeed(0,0);

					sumoState = SUMO_STATE_SEARCHING;


				 break;

			   case SUMO_STATE_SEARCHING:

				   DRV_SetSpeed(-2500,2500);

				   if(enemyfound == TRUE) {
					   BUZ_Beep(900,80);

					   sumoState = SUMO_STATE_HAUNTING;
				   }else{
					   for(i=0;i<6;i++) {  	//nicht runterfallen!
						   if(SensorValue(i) < 500){
							   DRV_SetSpeed(0,0);
							   sumoState = SUMO_STATE_TURNING;
							   break;
						   }
						}
					  }
				 break;
			}/*switch*/
		  FRTOS1_vTaskDelay(70/portTICK_RATE_MS);
	  }
	}

	static portTASK_FUNCTION(ManualSumoTask, pvParameters) {
	  (void)pvParameters; /* parameter not used */

		  BUZ_Beep(800,80);
		  FRTOS1_vTaskDelay(160/portTICK_RATE_MS);
		  BUZ_Beep(800,80);

		  for(;;){
			  FRTOS1_vTaskDelay(800/portTICK_RATE_MS);
		  }
	}

	static portTASK_FUNCTION(USMeasureTask, pvParameters) {
	(void)pvParameters; /* parameter not used */
		int count[2];
		int i,p,mean;

	#if 1
		for(;;){
			us = US_Measure_us();
			cm = US_usToCentimeters(us, 22);

			if(((cm > 2) && (cm != 0) && (cm <= 50))) {
				//count[i] = 1;
				enemyfound = TRUE;
			}else{
				//count[i] = 0;
				enemyfound = FALSE;
			}

			FRTOS1_vTaskDelay(51/portTICK_RATE_MS);
		}
	#endif
	}

	static portTASK_FUNCTION(WaitManualTask, pvParameters) {
		(void)pvParameters; /* parameter not used */

		int waitcount = 50;

		while(waitcount > 1){
			waitcount = waitcount - 1;
			FRTOS1_vTaskDelay(200/portTICK_RATE_MS);
		}

		manualSumo = TRUE;
		ManualSumoInit();

		FRTOS1_vTaskDelay(100/portTICK_RATE_MS);
		FRTOS1_vTaskDelete(xHandle);

	}

	void ManualSumoInit(void){
		if (FRTOS1_xTaskCreate(ManualSumoTask,"ManualSumoRob",configMINIMAL_STACK_SIZE,(void*)NULL,tskIDLE_PRIORITY,(xTaskHandle*)NULL) != pdPASS) {
				 for(;;){} /* error */
			}
	}

	void AutoSumoInit(void){
	if (FRTOS1_xTaskCreate(SumoTask,"SumoRob",configMINIMAL_STACK_SIZE,(void*)NULL,tskIDLE_PRIORITY,(xTaskHandle*)NULL) != pdPASS) {
		 	 for(;;){} /* error */
	}
}
#endif


void APP_Start(void) {
	#if PL_HAS_RTOS_TRACE
	  if (RTOSTRC1_uiTraceStart()==0) {
		for(;;){} /* error starting trace recorder. Not setup for enough queues/tasks/etc? */
	  }
	#endif

 	PL_Init(); /* platform initialization */
	EVNT_SetEvent(EVNT_INIT); /* set initial event */

	#if PL_HAS_RTOS
			 if (FRTOS1_xTaskCreate(AppTask, (signed portCHAR *)"App", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL) != pdPASS) {
				 for(;;){} /* error */
			 }

		#if PL_IS_ROBO
			 if (FRTOS1_xTaskCreate(USMeasureTask, "USMeasure", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY+2, NULL) != pdPASS) {
				 for(;;){} /* error */
			 }

			if( FRTOS1_xTaskCreate(WaitManualTask, "WaitManual", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, &xHandle) != pdPASS) {
				for(;;){} /* error */
			}
		#endif
		RTOS_Run();
	#else
	 	 APP_Loop();
	#endif


	#if 0
	  for(;;) {
		#if PL_HAS_MEALY
			MEALY_Step();
		#else
			LED1_On();
			WAIT1_Waitms(300);
			LED1_Off();
			LED2_On();
			WAIT1_Waitms(300);
			LED2_Off();
			LED3_On();
			WAIT1_Waitms(300);
			LED3_Off();
		#endif
		  }
	#endif

  /* just in case we leave the main application loop */
  PL_Deinit();
}


