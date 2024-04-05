################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/library/f103c8t6_SD/ccsbcs.c \
../Core/library/f103c8t6_SD/diskio.c \
../Core/library/f103c8t6_SD/fatfs.c \
../Core/library/f103c8t6_SD/fatfs_sd.c \
../Core/library/f103c8t6_SD/ff.c \
../Core/library/f103c8t6_SD/ff_gen_drv.c \
../Core/library/f103c8t6_SD/syscall.c \
../Core/library/f103c8t6_SD/user_diskio.c 

OBJS += \
./Core/library/f103c8t6_SD/ccsbcs.o \
./Core/library/f103c8t6_SD/diskio.o \
./Core/library/f103c8t6_SD/fatfs.o \
./Core/library/f103c8t6_SD/fatfs_sd.o \
./Core/library/f103c8t6_SD/ff.o \
./Core/library/f103c8t6_SD/ff_gen_drv.o \
./Core/library/f103c8t6_SD/syscall.o \
./Core/library/f103c8t6_SD/user_diskio.o 

C_DEPS += \
./Core/library/f103c8t6_SD/ccsbcs.d \
./Core/library/f103c8t6_SD/diskio.d \
./Core/library/f103c8t6_SD/fatfs.d \
./Core/library/f103c8t6_SD/fatfs_sd.d \
./Core/library/f103c8t6_SD/ff.d \
./Core/library/f103c8t6_SD/ff_gen_drv.d \
./Core/library/f103c8t6_SD/syscall.d \
./Core/library/f103c8t6_SD/user_diskio.d 


# Each subdirectory must supply rules for building sources it contributes
Core/library/f103c8t6_SD/%.o Core/library/f103c8t6_SD/%.su Core/library/f103c8t6_SD/%.cyclo: ../Core/library/f103c8t6_SD/%.c Core/library/f103c8t6_SD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/Core/library/f103c8t6_SD" -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/Core/library/timerDelete" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I"/home/pavel/Documents/cubeIDE-workspace/stm32_sd_operation/ThisLibrary" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-library-2f-f103c8t6_SD

clean-Core-2f-library-2f-f103c8t6_SD:
	-$(RM) ./Core/library/f103c8t6_SD/ccsbcs.cyclo ./Core/library/f103c8t6_SD/ccsbcs.d ./Core/library/f103c8t6_SD/ccsbcs.o ./Core/library/f103c8t6_SD/ccsbcs.su ./Core/library/f103c8t6_SD/diskio.cyclo ./Core/library/f103c8t6_SD/diskio.d ./Core/library/f103c8t6_SD/diskio.o ./Core/library/f103c8t6_SD/diskio.su ./Core/library/f103c8t6_SD/fatfs.cyclo ./Core/library/f103c8t6_SD/fatfs.d ./Core/library/f103c8t6_SD/fatfs.o ./Core/library/f103c8t6_SD/fatfs.su ./Core/library/f103c8t6_SD/fatfs_sd.cyclo ./Core/library/f103c8t6_SD/fatfs_sd.d ./Core/library/f103c8t6_SD/fatfs_sd.o ./Core/library/f103c8t6_SD/fatfs_sd.su ./Core/library/f103c8t6_SD/ff.cyclo ./Core/library/f103c8t6_SD/ff.d ./Core/library/f103c8t6_SD/ff.o ./Core/library/f103c8t6_SD/ff.su ./Core/library/f103c8t6_SD/ff_gen_drv.cyclo ./Core/library/f103c8t6_SD/ff_gen_drv.d ./Core/library/f103c8t6_SD/ff_gen_drv.o ./Core/library/f103c8t6_SD/ff_gen_drv.su ./Core/library/f103c8t6_SD/syscall.cyclo ./Core/library/f103c8t6_SD/syscall.d ./Core/library/f103c8t6_SD/syscall.o ./Core/library/f103c8t6_SD/syscall.su ./Core/library/f103c8t6_SD/user_diskio.cyclo ./Core/library/f103c8t6_SD/user_diskio.d ./Core/library/f103c8t6_SD/user_diskio.o ./Core/library/f103c8t6_SD/user_diskio.su

.PHONY: clean-Core-2f-library-2f-f103c8t6_SD

