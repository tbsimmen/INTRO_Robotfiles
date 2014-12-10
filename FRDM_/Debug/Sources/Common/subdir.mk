################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Accel.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Application.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Buzzer.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Debounce.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Drive.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Event.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/KeyDebounce.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Keys.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/LED.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/MCP4728.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Mealy.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Motor.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/NVM_Config.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Pid.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Platform.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/QuadCalib.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/RNet_App.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/RTOS.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Reflectance.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Remote.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Sem.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Shell.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/ShellQueue.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Tacho.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Timer.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Trigger.c \
C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Ultrasonic.c 

OBJS += \
./Sources/Common/Accel.o \
./Sources/Common/Application.o \
./Sources/Common/Buzzer.o \
./Sources/Common/Debounce.o \
./Sources/Common/Drive.o \
./Sources/Common/Event.o \
./Sources/Common/KeyDebounce.o \
./Sources/Common/Keys.o \
./Sources/Common/LED.o \
./Sources/Common/MCP4728.o \
./Sources/Common/Mealy.o \
./Sources/Common/Motor.o \
./Sources/Common/NVM_Config.o \
./Sources/Common/Pid.o \
./Sources/Common/Platform.o \
./Sources/Common/QuadCalib.o \
./Sources/Common/RNet_App.o \
./Sources/Common/RTOS.o \
./Sources/Common/Reflectance.o \
./Sources/Common/Remote.o \
./Sources/Common/Sem.o \
./Sources/Common/Shell.o \
./Sources/Common/ShellQueue.o \
./Sources/Common/Tacho.o \
./Sources/Common/Timer.o \
./Sources/Common/Trigger.o \
./Sources/Common/Ultrasonic.o 

C_DEPS += \
./Sources/Common/Accel.d \
./Sources/Common/Application.d \
./Sources/Common/Buzzer.d \
./Sources/Common/Debounce.d \
./Sources/Common/Drive.d \
./Sources/Common/Event.d \
./Sources/Common/KeyDebounce.d \
./Sources/Common/Keys.d \
./Sources/Common/LED.d \
./Sources/Common/MCP4728.d \
./Sources/Common/Mealy.d \
./Sources/Common/Motor.d \
./Sources/Common/NVM_Config.d \
./Sources/Common/Pid.d \
./Sources/Common/Platform.d \
./Sources/Common/QuadCalib.d \
./Sources/Common/RNet_App.d \
./Sources/Common/RTOS.d \
./Sources/Common/Reflectance.d \
./Sources/Common/Remote.d \
./Sources/Common/Sem.d \
./Sources/Common/Shell.d \
./Sources/Common/ShellQueue.d \
./Sources/Common/Tacho.d \
./Sources/Common/Timer.d \
./Sources/Common/Trigger.d \
./Sources/Common/Ultrasonic.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/Common/Accel.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Accel.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Application.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Application.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Buzzer.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Buzzer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Debounce.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Debounce.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Drive.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Drive.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Event.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Event.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/KeyDebounce.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/KeyDebounce.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Keys.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Keys.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/LED.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/LED.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/MCP4728.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/MCP4728.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Mealy.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Mealy.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Motor.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Motor.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/NVM_Config.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/NVM_Config.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Pid.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Pid.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Platform.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Platform.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/QuadCalib.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/QuadCalib.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/RNet_App.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/RNet_App.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/RTOS.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/RTOS.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Reflectance.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Reflectance.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Remote.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Remote.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Sem.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Sem.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Shell.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Shell.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/ShellQueue.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/ShellQueue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Tacho.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Tacho.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Timer.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Trigger.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Trigger.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Common/Ultrasonic.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Ultrasonic.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -I"C:\Users\tbsimmen\Documents\INTRO_RobotFiles\Common" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


