################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/can.c \
../Core/Src/gpio.c \
../Core/Src/main.c \
../Core/Src/stm32f1xx_hal_msp.c \
../Core/Src/stm32f1xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f1xx.c 

CPP_SRCS += \
../Core/Src/headlightmodes.cpp \
../Core/Src/main.cpp 

C_DEPS += \
./Core/Src/can.d \
./Core/Src/gpio.d \
./Core/Src/main.d \
./Core/Src/stm32f1xx_hal_msp.d \
./Core/Src/stm32f1xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f1xx.d 

OBJS += \
./Core/Src/can.o \
./Core/Src/gpio.o \
./Core/Src/headlightmodes.o \
./Core/Src/main.o \
./Core/Src/stm32f1xx_hal_msp.o \
./Core/Src/stm32f1xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f1xx.o 

CPP_DEPS += \
./Core/Src/headlightmodes.d \
./Core/Src/main.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Core/Src" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/STM32F1xx_HAL_Driver/Src" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/STM32F1xx_HAL_Driver/Inc" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Core/Inc" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/CMSIS/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/%.o: ../Core/Src/%.cpp Core/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Core/Src" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/STM32F1xx_HAL_Driver/Src" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/STM32F1xx_HAL_Driver/Inc" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Core/Inc" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/CMSIS/Include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

