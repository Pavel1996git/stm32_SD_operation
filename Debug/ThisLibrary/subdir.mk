################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThisLibrary/sd_file_operations.c 

OBJS += \
./ThisLibrary/sd_file_operations.o 

C_DEPS += \
./ThisLibrary/sd_file_operations.d 


# Each subdirectory must supply rules for building sources it contributes
ThisLibrary/%.o ThisLibrary/%.su ThisLibrary/%.cyclo: ../ThisLibrary/%.c ThisLibrary/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/Core/library/f103c8t6_SD" -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/Core/library/timerDelete" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/ThisLibrary" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-ThisLibrary

clean-ThisLibrary:
	-$(RM) ./ThisLibrary/sd_file_operations.cyclo ./ThisLibrary/sd_file_operations.d ./ThisLibrary/sd_file_operations.o ./ThisLibrary/sd_file_operations.su

.PHONY: clean-ThisLibrary

