/* ###################################################################
**     THIS COMPONENT MODULE IS GENERATED BY THE TOOL. DO NOT MODIFY IT.
**     Filename    : ExtIntLdd3.c
**     Project     : FRDM_
**     Processor   : MKL25Z128VLK4
**     Component   : ExtInt_LDD
**     Version     : Component 02.156, Driver 01.02, CPU db: 3.00.000
**     Compiler    : GNU C Compiler
**     Date/Time   : 2014-12-10, 09:08, # CodeGen: 1
**     Abstract    :
**         This component, "ExtInt_LDD", provide a low level API 
**         for unified access of external interrupts handling
**         across various device designs.
**         The component uses one pin which generates interrupt on 
**         selected edge.
**     Settings    :
**          Component name                                 : ExtIntLdd3
**          Pin                                            : TSI0_CH5/PTA4/I2C1_SDA/TPM0_CH1/NMI_b
**          Pin signal                                     : Joystick_Button_C
**          Generate interrupt on                          : falling edge
**          Interrupt                                      : INT_PORTA
**          Interrupt priority                             : medium priority
**          Initialization                                 : 
**            Enabled in init. code                        : yes
**            Auto initialization                          : yes
**          Threshold level                                : 0
**     Contents    :
**         Init    - LDD_TDeviceData* ExtIntLdd3_Init(LDD_TUserData *UserDataPtr);
**         Enable  - void ExtIntLdd3_Enable(LDD_TDeviceData *DeviceDataPtr);
**         Disable - void ExtIntLdd3_Disable(LDD_TDeviceData *DeviceDataPtr);
**         GetVal  - bool ExtIntLdd3_GetVal(LDD_TDeviceData *DeviceDataPtr);
**
**     Copyright : 1997 - 2014 Freescale Semiconductor, Inc. 
**     All Rights Reserved.
**     
**     Redistribution and use in source and binary forms, with or without modification,
**     are permitted provided that the following conditions are met:
**     
**     o Redistributions of source code must retain the above copyright notice, this list
**       of conditions and the following disclaimer.
**     
**     o Redistributions in binary form must reproduce the above copyright notice, this
**       list of conditions and the following disclaimer in the documentation and/or
**       other materials provided with the distribution.
**     
**     o Neither the name of Freescale Semiconductor, Inc. nor the names of its
**       contributors may be used to endorse or promote products derived from this
**       software without specific prior written permission.
**     
**     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
**     ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
**     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
**     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
**     ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
**     (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
**     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
**     ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
**     (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
**     SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**     
**     http: www.freescale.com
**     mail: support@freescale.com
** ###################################################################*/
/*!
** @file ExtIntLdd3.c
** @version 01.02
** @brief
**         This component, "ExtInt_LDD", provide a low level API 
**         for unified access of external interrupts handling
**         across various device designs.
**         The component uses one pin which generates interrupt on 
**         selected edge.
*/         
/*!
**  @addtogroup ExtIntLdd3_module ExtIntLdd3 module documentation
**  @{
*/         

/* MODULE ExtIntLdd3. */

#include "SW3.h"
#include "ExtIntLdd3.h"
#include "FreeRTOS.h" /* FreeRTOS interface */

#ifdef __cplusplus
extern "C" {
#endif 

typedef struct {
  bool UserEnabled;                    /* Enable/disable device flag */
  LDD_TUserData *UserData;             /* RTOS device data structure */
} ExtIntLdd3_TDeviceData, *ExtIntLdd3_TDeviceDataPtr; /* Device data structure type */

/* {FreeRTOS RTOS Adapter} Static object used for simulation of dynamic driver memory allocation */
static ExtIntLdd3_TDeviceData DeviceDataPrv__DEFAULT_RTOS_ALLOC;
/* {FreeRTOS RTOS Adapter} Global variable used for passing a parameter into ISR */
static ExtIntLdd3_TDeviceData * INT_PORTA__BAREBOARD_RTOS_ISRPARAM;

/*
** ===================================================================
**     Method      :  ExtIntLdd3_Init (component ExtInt_LDD)
*/
/*!
**     @brief
**         This method initializes the associated peripheral(s) and the
**         component internal variables. The method is called
**         automatically as a part of the application initialization
**         code.
**     @param
**         UserDataPtr     - Pointer to the RTOS device
**                           structure. This pointer will be passed to
**                           all events as parameter.
**     @return
**                         - Pointer to the dynamically allocated private
**                           structure or NULL if there was an error.
*/
/* ===================================================================*/
LDD_TDeviceData* ExtIntLdd3_Init(LDD_TUserData *UserDataPtr)
{
  /* Allocate LDD device structure */
  ExtIntLdd3_TDeviceData *DeviceDataPrv;

  /* {FreeRTOS RTOS Adapter} Driver memory allocation: Dynamic allocation is simulated by a pointer to the static object */
  DeviceDataPrv = &DeviceDataPrv__DEFAULT_RTOS_ALLOC;
  /* Store the UserData pointer */
  DeviceDataPrv->UserData = UserDataPtr;
  /* Set device as Enabled */
  DeviceDataPrv->UserEnabled = TRUE;
  /* Interrupt vector(s) allocation */
  /* {FreeRTOS RTOS Adapter} Set interrupt vector: IVT is static, ISR parameter is passed by the global variable */
  INT_PORTA__BAREBOARD_RTOS_ISRPARAM = DeviceDataPrv;
  /* PORTA_PCR4: ISF=0,MUX=7 */
  PORTA_PCR4 = (uint32_t)((PORTA_PCR4 & (uint32_t)~(uint32_t)(
                PORT_PCR_ISF_MASK
               )) | (uint32_t)(
                PORT_PCR_MUX(0x07)
               ));
  /* NVIC_IPR7: PRI_30=0x80 */
  NVIC_IPR7 = (uint32_t)((NVIC_IPR7 & (uint32_t)~(uint32_t)(
               NVIC_IP_PRI_30(0x7F)
              )) | (uint32_t)(
               NVIC_IP_PRI_30(0x80)
              ));
  /* NVIC_ISER: SETENA|=0x40000000 */
  NVIC_ISER |= NVIC_ISER_SETENA(0x40000000);
  /* Registration of the device structure */
  PE_LDD_RegisterDeviceStructure(PE_LDD_COMPONENT_ExtIntLdd3_ID,DeviceDataPrv);
  return ((LDD_TDeviceData *)DeviceDataPrv);
}

/*
** ===================================================================
**     Method      :  ExtIntLdd3_Enable (component ExtInt_LDD)
*/
/*!
**     @brief
**         Enable the component - the external events are accepted.
**         This method is available only if HW module allows
**         enable/disable of the interrupt.
**     @param
**         DeviceDataPtr   - Device data structure
**                           pointer returned by <Init> method.
*/
/* ===================================================================*/
void ExtIntLdd3_Enable(LDD_TDeviceData *DeviceDataPtr)
{
  ExtIntLdd3_TDeviceData *DeviceDataPrv = (ExtIntLdd3_TDeviceData *)DeviceDataPtr;

  (void)DeviceDataPtr;                 /* Parameter is not used, suppress unused argument warning */
  DeviceDataPrv->UserEnabled = TRUE;   /* Set device as Enabled */
}

/*
** ===================================================================
**     Method      :  ExtIntLdd3_Disable (component ExtInt_LDD)
*/
/*!
**     @brief
**         Disable the component - the external events are not accepted.
**         This method is available only if HW module allows
**         enable/disable of the interrupt.
**     @param
**         DeviceDataPtr   - Device data structure
**                           pointer returned by <Init> method.
*/
/* ===================================================================*/
void ExtIntLdd3_Disable(LDD_TDeviceData *DeviceDataPtr)
{
  ExtIntLdd3_TDeviceData *DeviceDataPrv = (ExtIntLdd3_TDeviceData *)DeviceDataPtr;

  DeviceDataPrv->UserEnabled = FALSE;  /* Set device as Disabled */
}

/*
** ===================================================================
**     Method      :  ExtIntLdd3_Interrupt (component ExtInt_LDD)
**
**     Description :
**         The method services the interrupt of the selected peripheral(s)
**         and eventually invokes event(s) of the component.
**         This method is internal. It is used by Processor Expert only.
** ===================================================================
*/
void ExtIntLdd3_Interrupt(void)
{
  /* {FreeRTOS RTOS Adapter} ISR parameter is passed through the global variable */
  ExtIntLdd3_TDeviceDataPtr DeviceDataPrv = INT_PORTA__BAREBOARD_RTOS_ISRPARAM;

  /* Check if the component is disabled */
  if (!DeviceDataPrv->UserEnabled) {
    return;
  }
  /* Call OnInterrupt event */
  ExtIntLdd3_OnInterrupt(DeviceDataPrv->UserData);
}

/*
** ===================================================================
**     Method      :  ExtIntLdd3_GetVal (component ExtInt_LDD)
*/
/*!
**     @brief
**         Returns the actual value of the input pin of the component.
**     @param
**         DeviceDataPtr   - Device data structure
**                           pointer returned by <Init> method.
**     @return
**                         - Returned input value. Possible values:
**                           <false> - logical "0" (Low level) <true> -
**                           logical "1" (High level)
*/
/* ===================================================================*/
bool ExtIntLdd3_GetVal(LDD_TDeviceData *DeviceDataPtr)
{
  (void)DeviceDataPtr;                 /* Parameter is not used, suppress unused argument warning */
  if ((GPIO_PDD_GetPortDataInput(PTA_BASE_PTR) & ExtIntLdd3_PIN_MASK) != 0U) {
    return TRUE;
  } else {
    return FALSE;
  }
}

/* END ExtIntLdd3. */

#ifdef __cplusplus
}  /* extern "C" */
#endif 

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
