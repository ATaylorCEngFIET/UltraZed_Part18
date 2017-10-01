################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/gic_setup.c \
../src/timer.c \
../src/xilpm_selfsuspend_example.c 

OBJS += \
./src/gic_setup.o \
./src/timer.o \
./src/xilpm_selfsuspend_example.o 

C_DEPS += \
./src/gic_setup.d \
./src/timer.d \
./src/xilpm_selfsuspend_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM A53 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../int_bsp/psu_cortexa53_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


