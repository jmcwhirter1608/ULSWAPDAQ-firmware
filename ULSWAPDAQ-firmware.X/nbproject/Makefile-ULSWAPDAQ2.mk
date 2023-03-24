#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-ULSWAPDAQ2.mk)" "nbproject/Makefile-local-ULSWAPDAQ2.mk"
include nbproject/Makefile-local-ULSWAPDAQ2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=ULSWAPDAQ2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c ../src/config/ULSWAPDAQ2/initialization.c ../src/config/ULSWAPDAQ2/interrupts.c ../src/config/ULSWAPDAQ2/exceptions.c ../src/main.c ../src/pgaConfigure.c ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/172095811/plib_clk.o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ${OBJECTDIR}/_ext/681439909/initialization.o ${OBJECTDIR}/_ext/681439909/interrupts.o ${OBJECTDIR}/_ext/681439909/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/172095811/plib_clk.o.d ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d ${OBJECTDIR}/_ext/681439909/initialization.o.d ${OBJECTDIR}/_ext/681439909/interrupts.o.d ${OBJECTDIR}/_ext/681439909/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/172095811/plib_clk.o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ${OBJECTDIR}/_ext/681439909/initialization.o ${OBJECTDIR}/_ext/681439909/interrupts.o ${OBJECTDIR}/_ext/681439909/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o

# Source Files
SOURCEFILES=../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c ../src/config/ULSWAPDAQ2/initialization.c ../src/config/ULSWAPDAQ2/interrupts.c ../src/config/ULSWAPDAQ2/exceptions.c ../src/main.c ../src/pgaConfigure.c ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-ULSWAPDAQ2.mk ${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX470F512H
MP_LINKER_FILE_OPTION=,--script="..\src\config\ULSWAPDAQ2\p32MX470F512H.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/172095811/plib_clk.o: ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c  .generated_files/flags/ULSWAPDAQ2/c859f3a9da666fbbd6fa45adb5e869137ae8e1e7 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172095811" 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172095811/plib_clk.o.d" -o ${OBJECTDIR}/_ext/172095811/plib_clk.o ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040072074/plib_evic.o: ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c  .generated_files/flags/ULSWAPDAQ2/d96a372e00f665c184b141ec190df9e60de346dd .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040072074" 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040072074/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040125902/plib_gpio.o: ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c  .generated_files/flags/ULSWAPDAQ2/78638836cf8f770447580e3d01cdcdd43e97d470 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040125902" 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910154199/plib_spi1_master.o: ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/ULSWAPDAQ2/84ed6436c8bdc6dd6276ef244b4696614c259f6f .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/910154199" 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040510519/plib_tmr1.o: ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/ULSWAPDAQ2/dc892b81a291ec1cb63899721051593e60eea3d8 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040510519" 
	@${RM} ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040528845/plib_uart1.o: ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c  .generated_files/flags/ULSWAPDAQ2/14bee0fc4243dc6161524b383bbcd36c28c40ecc .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040528845" 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460976341/xc32_monitor.o: ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c  .generated_files/flags/ULSWAPDAQ2/4f5cd0c3eb06cc1ad542ac8fab120ada0182b11 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/460976341" 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/initialization.o: ../src/config/ULSWAPDAQ2/initialization.c  .generated_files/flags/ULSWAPDAQ2/6770d2c7559c18fb9bcaecef3407e95c391276f2 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/initialization.o.d" -o ${OBJECTDIR}/_ext/681439909/initialization.o ../src/config/ULSWAPDAQ2/initialization.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/interrupts.o: ../src/config/ULSWAPDAQ2/interrupts.c  .generated_files/flags/ULSWAPDAQ2/19c144a6d1a77c3391c84ebabbc93eed2d740d5d .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/interrupts.o.d" -o ${OBJECTDIR}/_ext/681439909/interrupts.o ../src/config/ULSWAPDAQ2/interrupts.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/exceptions.o: ../src/config/ULSWAPDAQ2/exceptions.c  .generated_files/flags/ULSWAPDAQ2/e42caa3726d6d65524d0620de3e82ae605122131 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/exceptions.o.d" -o ${OBJECTDIR}/_ext/681439909/exceptions.o ../src/config/ULSWAPDAQ2/exceptions.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/ULSWAPDAQ2/5269efac1d286a666a4542e4c8720608d1aae3ea .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pgaConfigure.o: ../src/pgaConfigure.c  .generated_files/flags/ULSWAPDAQ2/111f5720ff0a3631ebeb35b92a977f777f4f2a5e .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d" -o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o ../src/pgaConfigure.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172112186/plib_tmr2.o: ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/ULSWAPDAQ2/9291777ce6f294fa9ddfdff35a76c07c9807b791 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172112186" 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/172095811/plib_clk.o: ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c  .generated_files/flags/ULSWAPDAQ2/be3b5a9bef63c067aaa36e7529923648b397a05e .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172095811" 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172095811/plib_clk.o.d" -o ${OBJECTDIR}/_ext/172095811/plib_clk.o ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040072074/plib_evic.o: ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c  .generated_files/flags/ULSWAPDAQ2/cbe513b9dd82233570020cec0d67380a6ad21452 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040072074" 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040072074/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040125902/plib_gpio.o: ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c  .generated_files/flags/ULSWAPDAQ2/b42362705abfe6090e15a3ad7c759f6fb28bae1e .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040125902" 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910154199/plib_spi1_master.o: ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/ULSWAPDAQ2/35a865b1331f494897cb904b362ccc37abe0eb17 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/910154199" 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040510519/plib_tmr1.o: ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/ULSWAPDAQ2/91493bd56e5ee442e7df1527dd167557d8846ef2 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040510519" 
	@${RM} ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040528845/plib_uart1.o: ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c  .generated_files/flags/ULSWAPDAQ2/d1418a920b2f3c95937df10b2e750462b6c81ea1 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040528845" 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460976341/xc32_monitor.o: ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c  .generated_files/flags/ULSWAPDAQ2/c998c8879d0fc4b6f707ec1812c77b022f2efa1 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/460976341" 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/initialization.o: ../src/config/ULSWAPDAQ2/initialization.c  .generated_files/flags/ULSWAPDAQ2/9647b24230d52dd85db181795914bc5fbdd1cda6 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/initialization.o.d" -o ${OBJECTDIR}/_ext/681439909/initialization.o ../src/config/ULSWAPDAQ2/initialization.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/interrupts.o: ../src/config/ULSWAPDAQ2/interrupts.c  .generated_files/flags/ULSWAPDAQ2/700d44b88d0456b5b1244b38901a753cc70fb57 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/interrupts.o.d" -o ${OBJECTDIR}/_ext/681439909/interrupts.o ../src/config/ULSWAPDAQ2/interrupts.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/exceptions.o: ../src/config/ULSWAPDAQ2/exceptions.c  .generated_files/flags/ULSWAPDAQ2/8b7f1ab1025d74adca77d6de54cd7e7d8417e644 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/exceptions.o.d" -o ${OBJECTDIR}/_ext/681439909/exceptions.o ../src/config/ULSWAPDAQ2/exceptions.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/ULSWAPDAQ2/407b60bae296ca7974eb8b736c783397382ed4c8 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pgaConfigure.o: ../src/pgaConfigure.c  .generated_files/flags/ULSWAPDAQ2/753e7a46f81f63672f8c6c2bfd061953a116f4d1 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d" -o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o ../src/pgaConfigure.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172112186/plib_tmr2.o: ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/ULSWAPDAQ2/ad2a8274fb10aa27aba3c2e6d5580c182976e4b7 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172112186" 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/ULSWAPDAQ2/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/ULSWAPDAQ2/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
