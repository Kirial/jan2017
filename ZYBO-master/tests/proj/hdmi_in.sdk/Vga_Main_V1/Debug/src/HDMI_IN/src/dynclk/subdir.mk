################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/HDMI_IN/src/dynclk/dynclk.c 

OBJS += \
./src/HDMI_IN/src/dynclk/dynclk.o 

C_DEPS += \
./src/HDMI_IN/src/dynclk/dynclk.d 


# Each subdirectory must supply rules for building sources it contributes
src/HDMI_IN/src/dynclk/%.o: ../src/HDMI_IN/src/dynclk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Vga_Main_V1_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


