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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr3.c ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c ../src/config/ULSWAPDAQ2/initialization.c ../src/config/ULSWAPDAQ2/interrupts.c ../src/config/ULSWAPDAQ2/exceptions.c ../src/main.c ../src/pgaConfigure.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/172095811/plib_clk.o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ${OBJECTDIR}/_ext/172112186/plib_tmr3.o ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ${OBJECTDIR}/_ext/681439909/initialization.o ${OBJECTDIR}/_ext/681439909/interrupts.o ${OBJECTDIR}/_ext/681439909/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/172095811/plib_clk.o.d ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d ${OBJECTDIR}/_ext/172112186/plib_tmr3.o.d ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d ${OBJECTDIR}/_ext/681439909/initialization.o.d ${OBJECTDIR}/_ext/681439909/interrupts.o.d ${OBJECTDIR}/_ext/681439909/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/172095811/plib_clk.o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ${OBJECTDIR}/_ext/172112186/plib_tmr3.o ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ${OBJECTDIR}/_ext/681439909/initialization.o ${OBJECTDIR}/_ext/681439909/interrupts.o ${OBJECTDIR}/_ext/681439909/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o

# Source Files
SOURCEFILES=../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr3.c ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c ../src/config/ULSWAPDAQ2/initialization.c ../src/config/ULSWAPDAQ2/interrupts.c ../src/config/ULSWAPDAQ2/exceptions.c ../src/main.c ../src/pgaConfigure.c



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
${OBJECTDIR}/_ext/172095811/plib_clk.o: ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c  .generated_files/flags/ULSWAPDAQ2/b78d1feb82c8fe7381d5b2342f86bd264efc0cdf .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172095811" 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172095811/plib_clk.o.d" -o ${OBJECTDIR}/_ext/172095811/plib_clk.o ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040072074/plib_evic.o: ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c  .generated_files/flags/ULSWAPDAQ2/66639a695b88eb8a6997cba87df2faebaf24477e .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040072074" 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040072074/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040125902/plib_gpio.o: ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c  .generated_files/flags/ULSWAPDAQ2/2269c09596ef63c516e94a6d0dff09aac5d9beff .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040125902" 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910154199/plib_spi1_master.o: ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/ULSWAPDAQ2/eac714af44a0ea14de95ac0898f1ca9a8c243ac6 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/910154199" 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172112186/plib_tmr2.o: ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/ULSWAPDAQ2/c9f69e100e1cf4a0035a43d7f5600bb6030352b6 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172112186" 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172112186/plib_tmr3.o: ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr3.c  .generated_files/flags/ULSWAPDAQ2/ef15d7e318eaeb5856ea8d0799008584f0bbcdd5 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172112186" 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172112186/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/172112186/plib_tmr3.o ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr3.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040510519/plib_tmr1.o: ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/ULSWAPDAQ2/e2dfe481fcc17124516fc3188eb9303c72c680e5 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040510519" 
	@${RM} ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040528845/plib_uart1.o: ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c  .generated_files/flags/ULSWAPDAQ2/fba4a19b5034fba6a86d289af9f785821bbe756e .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040528845" 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460976341/xc32_monitor.o: ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c  .generated_files/flags/ULSWAPDAQ2/1baf5406b7e650554b9faadcf341abdde39a88fa .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/460976341" 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/initialization.o: ../src/config/ULSWAPDAQ2/initialization.c  .generated_files/flags/ULSWAPDAQ2/5ec1b544ed0928da14d00a5a765d98d2ea105d7f .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/initialization.o.d" -o ${OBJECTDIR}/_ext/681439909/initialization.o ../src/config/ULSWAPDAQ2/initialization.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/interrupts.o: ../src/config/ULSWAPDAQ2/interrupts.c  .generated_files/flags/ULSWAPDAQ2/45a8d1abc3f0d93c5884057bfb10f8939754b72 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/interrupts.o.d" -o ${OBJECTDIR}/_ext/681439909/interrupts.o ../src/config/ULSWAPDAQ2/interrupts.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/exceptions.o: ../src/config/ULSWAPDAQ2/exceptions.c  .generated_files/flags/ULSWAPDAQ2/80a2425803642214157b3b30ccf1e743e040464c .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/exceptions.o.d" -o ${OBJECTDIR}/_ext/681439909/exceptions.o ../src/config/ULSWAPDAQ2/exceptions.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/ULSWAPDAQ2/e689720adba40906d9f8921cdff89dcbcede467e .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pgaConfigure.o: ../src/pgaConfigure.c  .generated_files/flags/ULSWAPDAQ2/820aa8ff6c18ddfc8593b5037bc51ec7cb2fd803 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d" -o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o ../src/pgaConfigure.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/172095811/plib_clk.o: ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c  .generated_files/flags/ULSWAPDAQ2/8ff02c33e88bd42a93108b147825aa9f591b1a1f .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172095811" 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172095811/plib_clk.o.d" -o ${OBJECTDIR}/_ext/172095811/plib_clk.o ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040072074/plib_evic.o: ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c  .generated_files/flags/ULSWAPDAQ2/739d08b841dc39045ebd513ded3b5a42f901a1b .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040072074" 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040072074/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040125902/plib_gpio.o: ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c  .generated_files/flags/ULSWAPDAQ2/fb1a0f0e30e145edb786ac8f296d880df348b95c .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040125902" 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910154199/plib_spi1_master.o: ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/ULSWAPDAQ2/563cf2382ac5b2ac39d543bae04a89589796b9f2 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/910154199" 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172112186/plib_tmr2.o: ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/ULSWAPDAQ2/fc7f7b46c052fc904877ab752bc4f694bbecf845 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172112186" 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172112186/plib_tmr3.o: ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr3.c  .generated_files/flags/ULSWAPDAQ2/f4fbbd3b4c95b8eb6888691f6abde8d30b891a99 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172112186" 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172112186/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/172112186/plib_tmr3.o ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr3.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040510519/plib_tmr1.o: ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/ULSWAPDAQ2/c671f59025dfc06089edd45e1df7f6d2a7f41974 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040510519" 
	@${RM} ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040510519/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1040510519/plib_tmr1.o ../src/config/ULSWAPDAQ2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040528845/plib_uart1.o: ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c  .generated_files/flags/ULSWAPDAQ2/a0e9c057f6a431b7df0bb8a875db108087083cac .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040528845" 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460976341/xc32_monitor.o: ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c  .generated_files/flags/ULSWAPDAQ2/268c8efab0dd56dce4e6def5ae16011465a3141a .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/460976341" 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/initialization.o: ../src/config/ULSWAPDAQ2/initialization.c  .generated_files/flags/ULSWAPDAQ2/3f64ba7b9792e5cf9f94e85ff1310572670e7eea .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/initialization.o.d" -o ${OBJECTDIR}/_ext/681439909/initialization.o ../src/config/ULSWAPDAQ2/initialization.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/interrupts.o: ../src/config/ULSWAPDAQ2/interrupts.c  .generated_files/flags/ULSWAPDAQ2/8af5bed2abcbd730cb06626eb7632b78425463ff .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/interrupts.o.d" -o ${OBJECTDIR}/_ext/681439909/interrupts.o ../src/config/ULSWAPDAQ2/interrupts.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/exceptions.o: ../src/config/ULSWAPDAQ2/exceptions.c  .generated_files/flags/ULSWAPDAQ2/904007223f83efbccd578b346787c09ea910b755 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/exceptions.o.d" -o ${OBJECTDIR}/_ext/681439909/exceptions.o ../src/config/ULSWAPDAQ2/exceptions.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/ULSWAPDAQ2/d5d80c002b47a59fbd03d8f0d7f96df47ce6a053 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pgaConfigure.o: ../src/pgaConfigure.c  .generated_files/flags/ULSWAPDAQ2/8a84b6bab3d11830e66012f08b87f5d388d15772 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d" -o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o ../src/pgaConfigure.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
