################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Src/inciso4.s \
../Src/inciso5.s \
../Src/main.s 

OBJS += \
./Src/inciso4.o \
./Src/inciso5.o \
./Src/main.o 

S_DEPS += \
./Src/inciso4.d \
./Src/inciso5.d \
./Src/main.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.s Src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/inciso4.d ./Src/inciso4.o ./Src/inciso5.d ./Src/inciso5.o ./Src/main.d ./Src/main.o

.PHONY: clean-Src

