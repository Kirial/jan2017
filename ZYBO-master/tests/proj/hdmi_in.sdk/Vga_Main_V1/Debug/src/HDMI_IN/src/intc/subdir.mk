################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/HDMI_IN/src/intc/intc.c 

OBJS += \
./src/HDMI_IN/src/intc/intc.o 

C_DEPS += \
./src/HDMI_IN/src/intc/intc.d 


# Each subdirectory must supply rules for building sources it contributes
src/HDMI_IN/src/intc/%.o: ../src/HDMI_IN/src/intc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Vga_Main_V1_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


