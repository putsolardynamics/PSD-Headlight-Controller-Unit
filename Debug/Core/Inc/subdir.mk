################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/canopen_object_disc.c 

C_DEPS += \
./Core/Inc/canopen_object_disc.d 

OBJS += \
./Core/Inc/canopen_object_disc.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/%.o: ../Core/Inc/%.c Core/Inc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Core/Src" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/STM32F1xx_HAL_Driver/Src" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/STM32F1xx_HAL_Driver/Inc" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Core/Inc" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"N:/PUTSolarDynamics/janekkurwa/FIRMWARE/HeadlightControllerUnit/Drivers/CMSIS/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

