################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../_Quadrocopter/Sensors/DPS310/DPS310.c 

OBJS += \
./_Quadrocopter/Sensors/DPS310/DPS310.o 

C_DEPS += \
./_Quadrocopter/Sensors/DPS310/DPS310.d 


# Each subdirectory must supply rules for building sources it contributes
_Quadrocopter/Sensors/DPS310/%.o: ../_Quadrocopter/Sensors/DPS310/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -DDAVE_CE -DUC_ID=4503003 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Include" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -I"C:\DAVE-3.1.10\ARM-GCC/arm-none-eabi/include" -I"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI/inc" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/XMC4500_series/Include" -I"C:\Davefuernarsch1\CORE_Larix_V1.0\Dave\Generated\inc\DAVESupport" -I"C:\Davefuernarsch1\CORE_Larix_V1.0\Dave\Generated\inc\LIBS" -I"C:\Davefuernarsch1\CORE_Larix_V1.0\Dave\Generated\inc\MOTORLIBS" -I"C:\Davefuernarsch1\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB\Core" -I"C:\Davefuernarsch1\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB" -I"C:\Davefuernarsch1\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB\Class" -Os -ffunction-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


