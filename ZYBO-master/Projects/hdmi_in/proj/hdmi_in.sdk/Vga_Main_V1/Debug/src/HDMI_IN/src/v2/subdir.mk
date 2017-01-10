################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/HDMI_IN/src/v2/color.c \
../src/HDMI_IN/src/v2/display.c \
../src/HDMI_IN/src/v2/draw.c \
../src/HDMI_IN/src/v2/main.c \
../src/HDMI_IN/src/v2/meta.c 

OBJS += \
./src/HDMI_IN/src/v2/color.o \
./src/HDMI_IN/src/v2/display.o \
./src/HDMI_IN/src/v2/draw.o \
./src/HDMI_IN/src/v2/main.o \
./src/HDMI_IN/src/v2/meta.o 

C_DEPS += \
./src/HDMI_IN/src/v2/color.d \
./src/HDMI_IN/src/v2/display.d \
./src/HDMI_IN/src/v2/draw.d \
./src/HDMI_IN/src/v2/main.d \
./src/HDMI_IN/src/v2/meta.d 


# Each subdirectory must supply rules for building sources it contributes
src/HDMI_IN/src/v2/%.o: ../src/HDMI_IN/src/v2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Vga_Main_V1_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


