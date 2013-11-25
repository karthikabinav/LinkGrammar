################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/analyze-linkage.c \
../src/and.c \
../src/api-example.c \
../src/api.c \
../src/build-disjuncts.c \
../src/command-line.c \
../src/constituent-example.c \
../src/constituents.c \
../src/count.c \
../src/error.c \
../src/extract-links.c \
../src/fast-match.c \
../src/idiom.c \
../src/linkset.c \
../src/massage.c \
../src/parse.c \
../src/post-process.c \
../src/pp_knowledge.c \
../src/pp_lexer.c \
../src/pp_linkset.c \
../src/preparation.c \
../src/print-util.c \
../src/print.c \
../src/prune.c \
../src/read-dict.c \
../src/resources.c \
../src/string-set.c \
../src/tokenize.c \
../src/utilities.c \
../src/word-file.c \
../src/www-parse.c 

OBJS += \
./src/analyze-linkage.o \
./src/and.o \
./src/api-example.o \
./src/api.o \
./src/build-disjuncts.o \
./src/command-line.o \
./src/constituent-example.o \
./src/constituents.o \
./src/count.o \
./src/error.o \
./src/extract-links.o \
./src/fast-match.o \
./src/idiom.o \
./src/linkset.o \
./src/massage.o \
./src/parse.o \
./src/post-process.o \
./src/pp_knowledge.o \
./src/pp_lexer.o \
./src/pp_linkset.o \
./src/preparation.o \
./src/print-util.o \
./src/print.o \
./src/prune.o \
./src/read-dict.o \
./src/resources.o \
./src/string-set.o \
./src/tokenize.o \
./src/utilities.o \
./src/word-file.o \
./src/www-parse.o 

C_DEPS += \
./src/analyze-linkage.d \
./src/and.d \
./src/api-example.d \
./src/api.d \
./src/build-disjuncts.d \
./src/command-line.d \
./src/constituent-example.d \
./src/constituents.d \
./src/count.d \
./src/error.d \
./src/extract-links.d \
./src/fast-match.d \
./src/idiom.d \
./src/linkset.d \
./src/massage.d \
./src/parse.d \
./src/post-process.d \
./src/pp_knowledge.d \
./src/pp_lexer.d \
./src/pp_linkset.d \
./src/preparation.d \
./src/print-util.d \
./src/print.d \
./src/prune.d \
./src/read-dict.d \
./src/resources.d \
./src/string-set.d \
./src/tokenize.d \
./src/utilities.d \
./src/word-file.d \
./src/www-parse.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


