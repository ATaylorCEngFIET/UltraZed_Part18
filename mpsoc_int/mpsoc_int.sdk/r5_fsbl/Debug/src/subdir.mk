################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
C:/hdl_projects/mpsoc_int/mpsoc_int.sdk/int_hw/psu_init.c \
../src/xfsbl_authentication.c \
../src/xfsbl_board.c \
../src/xfsbl_bs.c \
../src/xfsbl_csu_dma.c \
../src/xfsbl_handoff.c \
../src/xfsbl_hooks.c \
../src/xfsbl_image_header.c \
../src/xfsbl_initialization.c \
../src/xfsbl_main.c \
../src/xfsbl_misc.c \
../src/xfsbl_misc_drivers.c \
../src/xfsbl_nand.c \
../src/xfsbl_partition_load.c \
../src/xfsbl_qspi.c \
../src/xfsbl_rsa_sha.c \
../src/xfsbl_sd.c 

S_UPPER_SRCS += \
../src/xfsbl_exit.S 

OBJS += \
./src/psu_init.o \
./src/xfsbl_authentication.o \
./src/xfsbl_board.o \
./src/xfsbl_bs.o \
./src/xfsbl_csu_dma.o \
./src/xfsbl_exit.o \
./src/xfsbl_handoff.o \
./src/xfsbl_hooks.o \
./src/xfsbl_image_header.o \
./src/xfsbl_initialization.o \
./src/xfsbl_main.o \
./src/xfsbl_misc.o \
./src/xfsbl_misc_drivers.o \
./src/xfsbl_nand.o \
./src/xfsbl_partition_load.o \
./src/xfsbl_qspi.o \
./src/xfsbl_rsa_sha.o \
./src/xfsbl_sd.o 

S_UPPER_DEPS += \
./src/xfsbl_exit.d 

C_DEPS += \
./src/psu_init.d \
./src/xfsbl_authentication.d \
./src/xfsbl_board.d \
./src/xfsbl_bs.d \
./src/xfsbl_csu_dma.d \
./src/xfsbl_handoff.d \
./src/xfsbl_hooks.d \
./src/xfsbl_image_header.d \
./src/xfsbl_initialization.d \
./src/xfsbl_main.d \
./src/xfsbl_misc.d \
./src/xfsbl_misc_drivers.d \
./src/xfsbl_nand.d \
./src/xfsbl_partition_load.d \
./src/xfsbl_qspi.d \
./src/xfsbl_rsa_sha.d \
./src/xfsbl_sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/psu_init.o: C:/hdl_projects/mpsoc_int/mpsoc_int.sdk/int_hw/psu_init.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM R5 gcc compiler'
	armr5-none-eabi-gcc -DARMR5 -Wall -O0 -g3 -I"C:\hdl_projects\mpsoc_int\mpsoc_int.sdk\int_hw" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-r5 -mfloat-abi=soft -I../../r5_fsbl_bsp/psu_cortexr5_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM R5 gcc compiler'
	armr5-none-eabi-gcc -DARMR5 -Wall -O0 -g3 -I"C:\hdl_projects\mpsoc_int\mpsoc_int.sdk\int_hw" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-r5 -mfloat-abi=soft -I../../r5_fsbl_bsp/psu_cortexr5_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM R5 gcc compiler'
	armr5-none-eabi-gcc -DARMR5 -Wall -O0 -g3 -I"C:\hdl_projects\mpsoc_int\mpsoc_int.sdk\int_hw" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-r5 -mfloat-abi=soft -I../../r5_fsbl_bsp/psu_cortexr5_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


