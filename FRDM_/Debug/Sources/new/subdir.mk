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
./Sources/new/Accel.o \
./Sources/new/Application.o \
./Sources/new/Buzzer.o \
./Sources/new/Debounce.o \
./Sources/new/Drive.o \
./Sources/new/Event.o \
./Sources/new/KeyDebounce.o \
./Sources/new/Keys.o \
./Sources/new/LED.o \
./Sources/new/MCP4728.o \
./Sources/new/Mealy.o \
./Sources/new/Motor.o \
./Sources/new/NVM_Config.o \
./Sources/new/Pid.o \
./Sources/new/Platform.o \
./Sources/new/QuadCalib.o \
./Sources/new/RNet_App.o \
./Sources/new/RTOS.o \
./Sources/new/Reflectance.o \
./Sources/new/Remote.o \
./Sources/new/Sem.o \
./Sources/new/Shell.o \
./Sources/new/ShellQueue.o \
./Sources/new/Tacho.o \
./Sources/new/Timer.o \
./Sources/new/Trigger.o \
./Sources/new/Ultrasonic.o 

C_DEPS += \
./Sources/new/Accel.d \
./Sources/new/Application.d \
./Sources/new/Buzzer.d \
./Sources/new/Debounce.d \
./Sources/new/Drive.d \
./Sources/new/Event.d \
./Sources/new/KeyDebounce.d \
./Sources/new/Keys.d \
./Sources/new/LED.d \
./Sources/new/MCP4728.d \
./Sources/new/Mealy.d \
./Sources/new/Motor.d \
./Sources/new/NVM_Config.d \
./Sources/new/Pid.d \
./Sources/new/Platform.d \
./Sources/new/QuadCalib.d \
./Sources/new/RNet_App.d \
./Sources/new/RTOS.d \
./Sources/new/Reflectance.d \
./Sources/new/Remote.d \
./Sources/new/Sem.d \
./Sources/new/Shell.d \
./Sources/new/ShellQueue.d \
./Sources/new/Tacho.d \
./Sources/new/Timer.d \
./Sources/new/Trigger.d \
./Sources/new/Ultrasonic.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/new/Accel.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Accel.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Application.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Application.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Buzzer.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Buzzer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Debounce.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Debounce.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Drive.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Drive.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Event.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Event.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/KeyDebounce.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/KeyDebounce.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Keys.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Keys.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/LED.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/LED.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/MCP4728.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/MCP4728.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Mealy.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Mealy.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Motor.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Motor.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/NVM_Config.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/NVM_Config.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Pid.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Pid.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Platform.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Platform.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/QuadCalib.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/QuadCalib.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/RNet_App.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/RNet_App.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/RTOS.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/RTOS.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Reflectance.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Reflectance.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Remote.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Remote.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Sem.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Sem.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Shell.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Shell.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/ShellQueue.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/ShellQueue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Tacho.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Tacho.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Timer.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Trigger.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Trigger.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/new/Ultrasonic.o: C:/Users/tbsimmen/Documents/INTRO_RobotFiles/Common/Ultrasonic.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DPL_BOARD_IS_FRDM -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_1.1.1\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Sources" -I"C:/Users/tbsimmen/Documents/INTRO_RobotFiles/FRDM_/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


