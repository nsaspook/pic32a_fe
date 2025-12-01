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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/analog_fe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/analog_fe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/adc/plib_adc2.c ../src/config/default/peripheral/ccp/plib_sccp1.c ../src/config/default/peripheral/ccp/plib_sccp2.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/cmp_dac/plib_cmp1.c ../src/config/default/peripheral/dma/plib_dma.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/intc/plib_intc.c ../src/config/default/peripheral/opa/plib_opa2.c ../src/config/default/peripheral/pwm/plib_pwm.c ../src/config/default/peripheral/qei/plib_qei1.c ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c ../src/config/default/peripheral/tmr/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/traps.c ../src/lcd_drv/ChrFont0.c ../src/lcd_drv/FillPat.c ../src/lcd_drv/OledDriver.c ../src/lcd_drv/foo.c ../src/lcd_drv/eadog.c ../src/lcd_drv/OledGrph.c ../src/lcd_drv/lcd_drv.c ../src/lcd_drv/OledChar.c ../src/lcd_drv/dogm-graphic.c ../src/main.c ../src/gfx.c ../src/timers.c ../src/is66.c ../src/sca3300.c ../src/imu.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/60163342/plib_adc2.o ${OBJECTDIR}/_ext/60165246/plib_sccp1.o ${OBJECTDIR}/_ext/60165246/plib_sccp2.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/165463675/plib_cmp1.o ${OBJECTDIR}/_ext/60166502/plib_dma.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865312166/plib_intc.o ${OBJECTDIR}/_ext/60177166/plib_opa2.o ${OBJECTDIR}/_ext/60178356/plib_pwm.o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/traps.o ${OBJECTDIR}/_ext/285195972/ChrFont0.o ${OBJECTDIR}/_ext/285195972/FillPat.o ${OBJECTDIR}/_ext/285195972/OledDriver.o ${OBJECTDIR}/_ext/285195972/foo.o ${OBJECTDIR}/_ext/285195972/eadog.o ${OBJECTDIR}/_ext/285195972/OledGrph.o ${OBJECTDIR}/_ext/285195972/lcd_drv.o ${OBJECTDIR}/_ext/285195972/OledChar.o ${OBJECTDIR}/_ext/285195972/dogm-graphic.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/gfx.o ${OBJECTDIR}/_ext/1360937237/timers.o ${OBJECTDIR}/_ext/1360937237/is66.o ${OBJECTDIR}/_ext/1360937237/sca3300.o ${OBJECTDIR}/_ext/1360937237/imu.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/60163342/plib_adc2.o.d ${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d ${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d ${OBJECTDIR}/_ext/60166502/plib_dma.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d ${OBJECTDIR}/_ext/60177166/plib_opa2.o.d ${OBJECTDIR}/_ext/60178356/plib_pwm.o.d ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/traps.o.d ${OBJECTDIR}/_ext/285195972/ChrFont0.o.d ${OBJECTDIR}/_ext/285195972/FillPat.o.d ${OBJECTDIR}/_ext/285195972/OledDriver.o.d ${OBJECTDIR}/_ext/285195972/foo.o.d ${OBJECTDIR}/_ext/285195972/eadog.o.d ${OBJECTDIR}/_ext/285195972/OledGrph.o.d ${OBJECTDIR}/_ext/285195972/lcd_drv.o.d ${OBJECTDIR}/_ext/285195972/OledChar.o.d ${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/gfx.o.d ${OBJECTDIR}/_ext/1360937237/timers.o.d ${OBJECTDIR}/_ext/1360937237/is66.o.d ${OBJECTDIR}/_ext/1360937237/sca3300.o.d ${OBJECTDIR}/_ext/1360937237/imu.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/60163342/plib_adc2.o ${OBJECTDIR}/_ext/60165246/plib_sccp1.o ${OBJECTDIR}/_ext/60165246/plib_sccp2.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/165463675/plib_cmp1.o ${OBJECTDIR}/_ext/60166502/plib_dma.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865312166/plib_intc.o ${OBJECTDIR}/_ext/60177166/plib_opa2.o ${OBJECTDIR}/_ext/60178356/plib_pwm.o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/traps.o ${OBJECTDIR}/_ext/285195972/ChrFont0.o ${OBJECTDIR}/_ext/285195972/FillPat.o ${OBJECTDIR}/_ext/285195972/OledDriver.o ${OBJECTDIR}/_ext/285195972/foo.o ${OBJECTDIR}/_ext/285195972/eadog.o ${OBJECTDIR}/_ext/285195972/OledGrph.o ${OBJECTDIR}/_ext/285195972/lcd_drv.o ${OBJECTDIR}/_ext/285195972/OledChar.o ${OBJECTDIR}/_ext/285195972/dogm-graphic.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/gfx.o ${OBJECTDIR}/_ext/1360937237/timers.o ${OBJECTDIR}/_ext/1360937237/is66.o ${OBJECTDIR}/_ext/1360937237/sca3300.o ${OBJECTDIR}/_ext/1360937237/imu.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/adc/plib_adc2.c ../src/config/default/peripheral/ccp/plib_sccp1.c ../src/config/default/peripheral/ccp/plib_sccp2.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/cmp_dac/plib_cmp1.c ../src/config/default/peripheral/dma/plib_dma.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/intc/plib_intc.c ../src/config/default/peripheral/opa/plib_opa2.c ../src/config/default/peripheral/pwm/plib_pwm.c ../src/config/default/peripheral/qei/plib_qei1.c ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c ../src/config/default/peripheral/tmr/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/traps.c ../src/lcd_drv/ChrFont0.c ../src/lcd_drv/FillPat.c ../src/lcd_drv/OledDriver.c ../src/lcd_drv/foo.c ../src/lcd_drv/eadog.c ../src/lcd_drv/OledGrph.c ../src/lcd_drv/lcd_drv.c ../src/lcd_drv/OledChar.c ../src/lcd_drv/dogm-graphic.c ../src/main.c ../src/gfx.c ../src/timers.c ../src/is66.c ../src/sca3300.c ../src/imu.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/analog_fe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32AK1216GC41064
MP_LINKER_FILE_OPTION=,--script=p32AK1216GC41064.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/60163342/plib_adc2.o: ../src/config/default/peripheral/adc/plib_adc2.c  .generated_files/flags/default/c991deaebf95cc91f8d9d185ee8bb1360b8f5936 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/adc/plib_adc2.c  -o ${OBJECTDIR}/_ext/60163342/plib_adc2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc2.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60165246/plib_sccp1.o: ../src/config/default/peripheral/ccp/plib_sccp1.c  .generated_files/flags/default/9a0e4fdc0315ac07e5456a9719e29b202b682d58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165246" 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/ccp/plib_sccp1.c  -o ${OBJECTDIR}/_ext/60165246/plib_sccp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60165246/plib_sccp2.o: ../src/config/default/peripheral/ccp/plib_sccp2.c  .generated_files/flags/default/da6ad8f8ee744d78756eb6931209e63cb82d434 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165246" 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/ccp/plib_sccp2.c  -o ${OBJECTDIR}/_ext/60165246/plib_sccp2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/d5acea24aabbf6fff9f02c34cd01ee677b129d0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/165463675/plib_cmp1.o: ../src/config/default/peripheral/cmp_dac/plib_cmp1.c  .generated_files/flags/default/9ba5759c8d2f642906f1444df8daac53dfe3552f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165463675" 
	@${RM} ${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/165463675/plib_cmp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/cmp_dac/plib_cmp1.c  -o ${OBJECTDIR}/_ext/165463675/plib_cmp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60166502/plib_dma.o: ../src/config/default/peripheral/dma/plib_dma.c  .generated_files/flags/default/50d9923158b17e949e408e483f7acb47b94555da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60166502" 
	@${RM} ${OBJECTDIR}/_ext/60166502/plib_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/60166502/plib_dma.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/dma/plib_dma.c  -o ${OBJECTDIR}/_ext/60166502/plib_dma.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60166502/plib_dma.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/ee7bacae7a7083e4b7393ef87f52999ea4da4a43 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  .generated_files/flags/default/c4155d72aa271775f516acd0fd72582e6114ec0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60177166/plib_opa2.o: ../src/config/default/peripheral/opa/plib_opa2.c  .generated_files/flags/default/4d1b06cae30776bbb6e11b73a37f6cb1751a775f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177166" 
	@${RM} ${OBJECTDIR}/_ext/60177166/plib_opa2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177166/plib_opa2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/opa/plib_opa2.c  -o ${OBJECTDIR}/_ext/60177166/plib_opa2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60177166/plib_opa2.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60178356/plib_pwm.o: ../src/config/default/peripheral/pwm/plib_pwm.c  .generated_files/flags/default/6d4e256b253c7ace170e405630f231412f04f66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60178356" 
	@${RM} ${OBJECTDIR}/_ext/60178356/plib_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178356/plib_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/pwm/plib_pwm.c  -o ${OBJECTDIR}/_ext/60178356/plib_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60178356/plib_pwm.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60178755/plib_qei1.o: ../src/config/default/peripheral/qei/plib_qei1.c  .generated_files/flags/default/b85377e7daf2ebcb273a4a9219ddd680e612cd4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/qei/plib_qei1.c  -o ${OBJECTDIR}/_ext/60178755/plib_qei1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c  .generated_files/flags/default/a6fc417f1e7be64659a4595efc3cb4ce608ad884 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c  .generated_files/flags/default/b78d23e7bb4ab52d2534181ad09d2a6fd532772 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  .generated_files/flags/default/a22aac3e85877e3a11748ffb8370690d29d6517b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  .generated_files/flags/default/c2135649273f3c970395a73cba98fa9bc94c5aae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/9a4efd07a520bd5f66e36c5b768e87d789c26709 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/9755660475a9678f3b5a597bde74a9b8385d0abf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/32dcede3cbc9a4797e8c8d53ff7de9c8db5b9a4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/5ba2fabad3f80371cb307a892e23f4a0071a5cad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  .generated_files/flags/default/2b50849e2ff9d50cff4cf6ade4b38fd43e72ca0c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/ChrFont0.o: ../src/lcd_drv/ChrFont0.c  .generated_files/flags/default/54bbf43639a3778fadadfc81a77e4d602ae4cbf0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/ChrFont0.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/ChrFont0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/ChrFont0.c  -o ${OBJECTDIR}/_ext/285195972/ChrFont0.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/ChrFont0.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/FillPat.o: ../src/lcd_drv/FillPat.c  .generated_files/flags/default/7ab13993f4a41cad61a2b952bab990890c7c3581 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/FillPat.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/FillPat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/FillPat.c  -o ${OBJECTDIR}/_ext/285195972/FillPat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/FillPat.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/OledDriver.o: ../src/lcd_drv/OledDriver.c  .generated_files/flags/default/d998367a45f229c6b5ecb002359084cb792e5830 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledDriver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledDriver.c  -o ${OBJECTDIR}/_ext/285195972/OledDriver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/OledDriver.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/foo.o: ../src/lcd_drv/foo.c  .generated_files/flags/default/825bdd1ed799475c9d9bff4bbb8fc68ddc8f0f22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/foo.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/foo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/foo.c  -o ${OBJECTDIR}/_ext/285195972/foo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/foo.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/eadog.o: ../src/lcd_drv/eadog.c  .generated_files/flags/default/1dc674d2fc721e511f94bffb6ab56d1062507fa9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/eadog.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/eadog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/eadog.c  -o ${OBJECTDIR}/_ext/285195972/eadog.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/eadog.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/OledGrph.o: ../src/lcd_drv/OledGrph.c  .generated_files/flags/default/87a91df122b8ba794a5ef0ae7affd49d5a850f5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledGrph.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledGrph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledGrph.c  -o ${OBJECTDIR}/_ext/285195972/OledGrph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/OledGrph.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/lcd_drv.o: ../src/lcd_drv/lcd_drv.c  .generated_files/flags/default/2fe6d59c9b45f644d8f4dfe131390b4daeea12d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/lcd_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/lcd_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/lcd_drv.c  -o ${OBJECTDIR}/_ext/285195972/lcd_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/lcd_drv.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/OledChar.o: ../src/lcd_drv/OledChar.c  .generated_files/flags/default/977718ecaeeeeeb6a38742304d2617c290d40b0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledChar.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledChar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledChar.c  -o ${OBJECTDIR}/_ext/285195972/OledChar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/OledChar.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/dogm-graphic.o: ../src/lcd_drv/dogm-graphic.c  .generated_files/flags/default/570e471c90726743ca2ab4bd8e196e081898b92e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/dogm-graphic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/dogm-graphic.c  -o ${OBJECTDIR}/_ext/285195972/dogm-graphic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/f3bf500eeb03f1ade103066bd3d2382833d97276 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/gfx.o: ../src/gfx.c  .generated_files/flags/default/10f0a5ed212ebc8b7e7422c54d54d9a80e0d99ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/gfx.c  -o ${OBJECTDIR}/_ext/1360937237/gfx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/gfx.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  .generated_files/flags/default/ddbc4cf88f5f9fbfa30f2053d8f7898fae13cb5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/timers.c  -o ${OBJECTDIR}/_ext/1360937237/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/is66.o: ../src/is66.c  .generated_files/flags/default/8f208e072aa54203f55147bbbe8048632bd83dea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/is66.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/is66.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/is66.c  -o ${OBJECTDIR}/_ext/1360937237/is66.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/is66.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/sca3300.o: ../src/sca3300.c  .generated_files/flags/default/b43d84a41db62dbb7052ccdc21d7b6e27311a94a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sca3300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sca3300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/sca3300.c  -o ${OBJECTDIR}/_ext/1360937237/sca3300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sca3300.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/imu.o: ../src/imu.c  .generated_files/flags/default/633347d2f37a3d2c358e8fa55f471f5e82fd92d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/imu.c  -o ${OBJECTDIR}/_ext/1360937237/imu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/imu.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
else
${OBJECTDIR}/_ext/60163342/plib_adc2.o: ../src/config/default/peripheral/adc/plib_adc2.c  .generated_files/flags/default/ae1774b2ec8a3f632ee491b372d5312caf6ca1b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/adc/plib_adc2.c  -o ${OBJECTDIR}/_ext/60163342/plib_adc2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc2.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60165246/plib_sccp1.o: ../src/config/default/peripheral/ccp/plib_sccp1.c  .generated_files/flags/default/fd4d21cc8c4eed40256c301eea81aef956b86851 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165246" 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/ccp/plib_sccp1.c  -o ${OBJECTDIR}/_ext/60165246/plib_sccp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60165246/plib_sccp2.o: ../src/config/default/peripheral/ccp/plib_sccp2.c  .generated_files/flags/default/c380181ee7499a54a36258e397ba28f46386e29e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165246" 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/ccp/plib_sccp2.c  -o ${OBJECTDIR}/_ext/60165246/plib_sccp2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/be9fc164aae81f47d5bfa815ee62731a87bba69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/165463675/plib_cmp1.o: ../src/config/default/peripheral/cmp_dac/plib_cmp1.c  .generated_files/flags/default/642560666c5b583919b627e7f82de08c2c0995b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165463675" 
	@${RM} ${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/165463675/plib_cmp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/cmp_dac/plib_cmp1.c  -o ${OBJECTDIR}/_ext/165463675/plib_cmp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60166502/plib_dma.o: ../src/config/default/peripheral/dma/plib_dma.c  .generated_files/flags/default/f20495906f7955e92c630ee424020b1534f517ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60166502" 
	@${RM} ${OBJECTDIR}/_ext/60166502/plib_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/60166502/plib_dma.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/dma/plib_dma.c  -o ${OBJECTDIR}/_ext/60166502/plib_dma.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60166502/plib_dma.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/37bb53300fa97aa0430642b20dd31de01762c37c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  .generated_files/flags/default/b87007891cb86512b33235dfc12162fed5c06026 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60177166/plib_opa2.o: ../src/config/default/peripheral/opa/plib_opa2.c  .generated_files/flags/default/8d9352ec99cc29477d3f8475c3b20530a2abfbad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177166" 
	@${RM} ${OBJECTDIR}/_ext/60177166/plib_opa2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177166/plib_opa2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/opa/plib_opa2.c  -o ${OBJECTDIR}/_ext/60177166/plib_opa2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60177166/plib_opa2.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60178356/plib_pwm.o: ../src/config/default/peripheral/pwm/plib_pwm.c  .generated_files/flags/default/79c7fab2263b1c09326586bb1eedb7abacfe61f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60178356" 
	@${RM} ${OBJECTDIR}/_ext/60178356/plib_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178356/plib_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/pwm/plib_pwm.c  -o ${OBJECTDIR}/_ext/60178356/plib_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60178356/plib_pwm.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60178755/plib_qei1.o: ../src/config/default/peripheral/qei/plib_qei1.c  .generated_files/flags/default/c48bd96b28181978e8df7a7b16b37ea43b70b827 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/qei/plib_qei1.c  -o ${OBJECTDIR}/_ext/60178755/plib_qei1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c  .generated_files/flags/default/a6025ce0f5fea231fa9bd83c7d0ca460a6096877 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c  .generated_files/flags/default/1173d410bf4f8773e311c6a70848fd7942a2ac13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  .generated_files/flags/default/7b82693f7c37f20b2806818dc6fb44951c20403f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  .generated_files/flags/default/eb8fb6183e816b16b9b04ecb6a65e736dcad4aad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/f597b46382f6e1e28e66e8436ac575f84a51fc15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/a890c612bc4e276744a546b429075a3a5b31f1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/674a5665c0558fc901b4ee159aac92977e0ffadd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/ef755568141a043ce4b025d388b20e19312ec6bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  .generated_files/flags/default/52560ada2bcd6a9edee699129ab273699139dbf1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/ChrFont0.o: ../src/lcd_drv/ChrFont0.c  .generated_files/flags/default/f96a081cfaf372e9ebf9e1dafcf1a54b50303d9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/ChrFont0.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/ChrFont0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/ChrFont0.c  -o ${OBJECTDIR}/_ext/285195972/ChrFont0.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/ChrFont0.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/FillPat.o: ../src/lcd_drv/FillPat.c  .generated_files/flags/default/3b9d38d5cc9bd835fede44f2d6254f3f8bdc77aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/FillPat.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/FillPat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/FillPat.c  -o ${OBJECTDIR}/_ext/285195972/FillPat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/FillPat.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/OledDriver.o: ../src/lcd_drv/OledDriver.c  .generated_files/flags/default/c5c39c7ecc456de111ad9199335832dc6592a794 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledDriver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledDriver.c  -o ${OBJECTDIR}/_ext/285195972/OledDriver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/OledDriver.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/foo.o: ../src/lcd_drv/foo.c  .generated_files/flags/default/2122cc4e7da268ce9dc3cb95a36b73d63ff5718e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/foo.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/foo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/foo.c  -o ${OBJECTDIR}/_ext/285195972/foo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/foo.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/eadog.o: ../src/lcd_drv/eadog.c  .generated_files/flags/default/f0dea6bfd094690df1a4b3ec62916725af22bd13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/eadog.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/eadog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/eadog.c  -o ${OBJECTDIR}/_ext/285195972/eadog.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/eadog.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/OledGrph.o: ../src/lcd_drv/OledGrph.c  .generated_files/flags/default/ef4d11f814faa998d6dea9b72a45e86aacba28ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledGrph.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledGrph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledGrph.c  -o ${OBJECTDIR}/_ext/285195972/OledGrph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/OledGrph.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/lcd_drv.o: ../src/lcd_drv/lcd_drv.c  .generated_files/flags/default/d8b93157dec564df3498f1aae5495e8e28045bff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/lcd_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/lcd_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/lcd_drv.c  -o ${OBJECTDIR}/_ext/285195972/lcd_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/lcd_drv.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/OledChar.o: ../src/lcd_drv/OledChar.c  .generated_files/flags/default/f7c2720ed29a97d15d505a7b7b8b566b75a9c7ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledChar.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledChar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledChar.c  -o ${OBJECTDIR}/_ext/285195972/OledChar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/OledChar.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/285195972/dogm-graphic.o: ../src/lcd_drv/dogm-graphic.c  .generated_files/flags/default/540de8d06b69f5b721cb580e12e42843a371fc1a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/dogm-graphic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/dogm-graphic.c  -o ${OBJECTDIR}/_ext/285195972/dogm-graphic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/3824a1648fd040bfe89d9af5740cfda156fce48e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/gfx.o: ../src/gfx.c  .generated_files/flags/default/6c5cdaf34542223cacf679356df388f685e3342e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/gfx.c  -o ${OBJECTDIR}/_ext/1360937237/gfx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/gfx.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  .generated_files/flags/default/f4d15ff0eb3af5172c3783d7f5b9f3b8b5a40b6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/timers.c  -o ${OBJECTDIR}/_ext/1360937237/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/is66.o: ../src/is66.c  .generated_files/flags/default/c2c0d8078f0a733c65accfb63b4d1267a850d975 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/is66.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/is66.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/is66.c  -o ${OBJECTDIR}/_ext/1360937237/is66.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/is66.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/sca3300.o: ../src/sca3300.c  .generated_files/flags/default/5041ef38ab52d2a557fcba79624c5b7435dabf46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sca3300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sca3300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/sca3300.c  -o ${OBJECTDIR}/_ext/1360937237/sca3300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sca3300.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/imu.o: ../src/imu.c  .generated_files/flags/default/17a3abbd5ef4b0ba2382193bcbd4d4f054015f38 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/imu.c  -o ${OBJECTDIR}/_ext/1360937237/imu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/imu.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/analog_fe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/analog_fe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST) -mdfp="${DFP_DIR}/xc32" 
	
else
${DISTDIR}/analog_fe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/analog_fe.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST) -mdfp="${DFP_DIR}/xc32" 
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/analog_fe.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a   -mdfp="${DFP_DIR}/xc32" 
	
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
