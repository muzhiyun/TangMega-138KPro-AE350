################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/demo/main.c 

OBJS += \
./src/demo/main.o 

C_DEPS += \
./src/demo/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/demo/%.o: ../src/demo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Andes C Compiler'
	$(CROSS_COMPILE)gcc -I"/cygdrive/C/Users/MuZhi/Desktop/zynq/138k/project/AE350/RiscV_AE350_SOC_V1.0/RiscV_AE350_SOC_V1.0/ref_design/FPGA_RefDesign/DK_START_GW5AT138_V2.0/ae350_demo/firmware/ae350_demo/src/bsp/ae350" -I"/cygdrive/C/Users/MuZhi/Desktop/zynq/138k/project/AE350/RiscV_AE350_SOC_V1.0/RiscV_AE350_SOC_V1.0/ref_design/FPGA_RefDesign/DK_START_GW5AT138_V2.0/ae350_demo/firmware/ae350_demo/src/bsp/config" -I"/cygdrive/C/Users/MuZhi/Desktop/zynq/138k/project/AE350/RiscV_AE350_SOC_V1.0/RiscV_AE350_SOC_V1.0/ref_design/FPGA_RefDesign/DK_START_GW5AT138_V2.0/ae350_demo/firmware/ae350_demo/src/bsp/driver/ae350" -I"/cygdrive/C/Users/MuZhi/Desktop/zynq/138k/project/AE350/RiscV_AE350_SOC_V1.0/RiscV_AE350_SOC_V1.0/ref_design/FPGA_RefDesign/DK_START_GW5AT138_V2.0/ae350_demo/firmware/ae350_demo/src/bsp/driver/include" -I"/cygdrive/C/Users/MuZhi/Desktop/zynq/138k/project/AE350/RiscV_AE350_SOC_V1.0/RiscV_AE350_SOC_V1.0/ref_design/FPGA_RefDesign/DK_START_GW5AT138_V2.0/ae350_demo/firmware/ae350_demo/src/bsp/lib" -I"/cygdrive/C/Users/MuZhi/Desktop/zynq/138k/project/AE350/RiscV_AE350_SOC_V1.0/RiscV_AE350_SOC_V1.0/ref_design/FPGA_RefDesign/DK_START_GW5AT138_V2.0/ae350_demo/firmware/ae350_demo/src/demo" -Og -mcmodel=medium -g3 -Wall -mcpu=a25 -ffunction-sections -fdata-sections -c -fmessage-length=0 -fno-builtin -fomit-frame-pointer -fno-strict-aliasing -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $(@:%.o=%.o)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


