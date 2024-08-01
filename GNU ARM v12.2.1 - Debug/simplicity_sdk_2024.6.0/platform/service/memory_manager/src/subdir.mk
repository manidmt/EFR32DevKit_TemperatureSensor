################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk/platform/service/memory_manager/src/sl_memory_manager_region.c 

OBJS += \
./simplicity_sdk_2024.6.0/platform/service/memory_manager/src/sl_memory_manager_region.o 

C_DEPS += \
./simplicity_sdk_2024.6.0/platform/service/memory_manager/src/sl_memory_manager_region.d 


# Each subdirectory must supply rules for building sources it contributes
simplicity_sdk_2024.6.0/platform/service/memory_manager/src/sl_memory_manager_region.o: C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk/platform/service/memory_manager/src/sl_memory_manager_region.c simplicity_sdk_2024.6.0/platform/service/memory_manager/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32FG23B010F512IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_2_RF_BANDS=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_915=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2600A"' '-DSL_BOARD_REV="A01"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DSL_CODE_COMPONENT_PERIPHERAL_SYSRTC=hal_sysrtc' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"C:\Users\DiazMecoterr\SimplicityStudio\v5_workspace\empty_2\config" -I"C:\Users\DiazMecoterr\SimplicityStudio\v5_workspace\empty_2\autogen" -I"C:\Users\DiazMecoterr\SimplicityStudio\v5_workspace\empty_2" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFR32FG23/Include" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/debug/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/dmadrv/inc/s2_signals" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/peripheral/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/i2cspm/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/iostream/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/si70xx/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"C:/Users/DiazMecoterr/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.0/platform/service/memory_manager/src/sl_memory_manager_region.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


