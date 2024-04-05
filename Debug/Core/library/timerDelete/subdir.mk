################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/library/timerDelete/timerDealy.c 

OBJS += \
./Core/library/timerDelete/timerDealy.o 

C_DEPS += \
./Core/library/timerDelete/timerDealy.d 


# Each subdirectory must supply rules for building sources it contributes
Core/library/timerDelete/%.o Core/library/timerDelete/%.su Core/library/timerDelete/%.cyclo: ../Core/library/timerDelete/%.c Core/library/timerDelete/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/Core/library/f103c8t6_SD" -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/Core/library/timerDelete" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/ThisLibrary" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-library-2f-timerDelete

clean-Core-2f-library-2f-timerDelete:
	-$(RM) ./Core/library/timerDelete/timerDealy.cyclo ./Core/library/timerDelete/timerDealy.d ./Core/library/timerDelete/timerDealy.o ./Core/library/timerDelete/timerDealy.su

.PHONY: clean-Core-2f-library-2f-timerDelete

