/* ###################################################################
 **     Filename    : main.c
 **     Project     : FRDM
 **     Processor   : MKL25Z128VLK4
 **     Version     : Driver 01.01
 **     Compiler    : GNU C Compiler
 **     Date/Time   : 2014-11-07, 16:04, # CodeGen: 0
 **     Abstract    :
 **         Main module.
 **         This module contains user's application code.
 **     Settings    :
 **     Contents    :
 **         No public methods
 **
 ** ###################################################################*/
/*!
 ** @file main.c
 ** @version 01.01
 ** @brief
 **         Main module.
 **         This module contains user's application code.
 */
/*!
 **  @addtogroup main_module main module documentation
 **  @{
 */
/* MODULE main */

/* Including needed modules to compile this module/procedure */
#include "Cpu.h"
#include "Events.h"
#include "WAIT1.h"
#include "HF1.h"
#include "CS1.h"
#include "LedBit1.h"
#include "BitIoLdd1.h"
#include "LedBit2.h"
#include "BitIoLdd4.h"
#include "SW1.h"
#include "ExtIntLdd1.h"
#include "BUZ1.h"
#include "BitIoLdd3.h"
#include "FRTOS1.h"
#include "RTOSTRC1.h"
#include "RTOSCNTRLDD1.h"
#include "UTIL1.h"
#include "CLS1.h"
#include "USB1.h"
#include "USB0.h"
#include "CDC1.h"
#include "Tx1.h"
#include "Rx1.h"
#include "BT1.h"
#include "Serial2.h"
#include "ASerialLdd2.h"
#include "LED_IR.h"
#include "LEDpin1.h"
#include "BitIoLdd5.h"
#include "RefCnt.h"
#include "IR1.h"
#include "BitIoLdd6.h"
#include "IR2.h"
#include "BitIoLdd7.h"
#include "IR3.h"
#include "BitIoLdd8.h"
#include "IR4.h"
#include "BitIoLdd9.h"
#include "IR5.h"
#include "BitIoLdd10.h"
#include "IR6.h"
#include "BitIoLdd11.h"
#include "MOTTU.h"
#include "DIRL.h"
#include "BitIoLdd6.h"
#include "BitIoLdd12.h"
#include "PWMR.h"
#include "PwmLdd1.h"
#include "DIRR.h"
#include "BitIoLdd13.h"
#include "PWML.h"
#include "PwmLdd2.h"
#include "IFsh1.h"
#include "IntFlashLdd1.h"
#include "TU_MPC4728.h"
#include "MPC4728_LDAC.h"
#include "BitIoLdd14.h"
#include "MPC4728_RDY.h"
#include "BitIoLdd15.h"
#include "I2C1.h"
#include "GI2C1.h"
#include "TMOUT1.h"
#include "Q4CLeft.h"
#include "C11.h"
#include "BitIoLdd16.h"
#include "C21.h"
#include "BitIoLdd17.h"
#include "Q4CRight.h"
#include "C12.h"
#include "BitIoLdd19.h"
#include "C23.h"
#include "BitIoLdd20.h"
#include "QuadInt.h"
#include "TimerIntLdd2.h"
#include "TU_QuadInt.h"
#include "LED.h"
/* Including shared modules, which are used for whole project */
#include "PE_Types.h"
#include "PE_Error.h"
#include "PE_Const.h"
#include "IO_Map.h"
#include "Motor.h"
#include "Application.h"
/* User includes (#include below this line is not maintained by Processor Expert) */

/*lint -save  -e970 Disable MISRA rule (6.3) checking. */
int main(void)
/*lint -restore Enable MISRA rule (6.3) checking. */
{
	/* Write your local variable definition here */

	/*** Processor Expert internal initialization. DON'T REMOVE THIS CODE!!! ***/
	PE_low_level_init();
	/*** End of Processor Expert internal initialization.                    ***/


	APP_Start();







	/*** Don't write any code pass this line, or it will be deleted during code generation. ***/
  /*** RTOS startup code. Macro PEX_RTOS_START is defined by the RTOS component. DON'T MODIFY THIS CODE!!! ***/
  #ifdef PEX_RTOS_START
    PEX_RTOS_START();                  /* Startup of the selected RTOS. Macro is defined by the RTOS component. */
  #endif
  /*** End of RTOS startup code.  ***/
  /*** Processor Expert end of main routine. DON'T MODIFY THIS CODE!!! ***/
  for(;;){}
  /*** Processor Expert end of main routine. DON'T WRITE CODE BELOW!!! ***/
} /*** End of main routine. DO NOT MODIFY THIS TEXT!!! ***/

/* END main */
/*!
 ** @}
 */
/*
 ** ###################################################################
 **
 **     This file was created by Processor Expert 10.4 [05.10]
 **     for the Freescale Kinetis series of microcontrollers.
 **
 ** ###################################################################
 */
