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
${OBJECTDIR}/_ext/60163342/plib_adc2.o: ../src/config/default/peripheral/adc/plib_adc2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/adc/plib_adc2.c  -o ${OBJECTDIR}/_ext/60163342/plib_adc2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc2.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60163342/plib_adc2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60165246/plib_sccp1.o: ../src/config/default/peripheral/ccp/plib_sccp1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60165246" 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/ccp/plib_sccp1.c  -o ${OBJECTDIR}/_ext/60165246/plib_sccp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60165246/plib_sccp2.o: ../src/config/default/peripheral/ccp/plib_sccp2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60165246" 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/ccp/plib_sccp2.c  -o ${OBJECTDIR}/_ext/60165246/plib_sccp2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/165463675/plib_cmp1.o: ../src/config/default/peripheral/cmp_dac/plib_cmp1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/165463675" 
	@${RM} ${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/165463675/plib_cmp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/cmp_dac/plib_cmp1.c  -o ${OBJECTDIR}/_ext/165463675/plib_cmp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60166502/plib_dma.o: ../src/config/default/peripheral/dma/plib_dma.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60166502" 
	@${RM} ${OBJECTDIR}/_ext/60166502/plib_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/60166502/plib_dma.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/dma/plib_dma.c  -o ${OBJECTDIR}/_ext/60166502/plib_dma.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60166502/plib_dma.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60166502/plib_dma.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60177166/plib_opa2.o: ../src/config/default/peripheral/opa/plib_opa2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60177166" 
	@${RM} ${OBJECTDIR}/_ext/60177166/plib_opa2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177166/plib_opa2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/opa/plib_opa2.c  -o ${OBJECTDIR}/_ext/60177166/plib_opa2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60177166/plib_opa2.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60177166/plib_opa2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60178356/plib_pwm.o: ../src/config/default/peripheral/pwm/plib_pwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60178356" 
	@${RM} ${OBJECTDIR}/_ext/60178356/plib_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178356/plib_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/pwm/plib_pwm.c  -o ${OBJECTDIR}/_ext/60178356/plib_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60178356/plib_pwm.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60178356/plib_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60178755/plib_qei1.o: ../src/config/default/peripheral/qei/plib_qei1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/qei/plib_qei1.c  -o ${OBJECTDIR}/_ext/60178755/plib_qei1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/initialization.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/ChrFont0.o: ../src/lcd_drv/ChrFont0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/ChrFont0.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/ChrFont0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/ChrFont0.c  -o ${OBJECTDIR}/_ext/285195972/ChrFont0.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/ChrFont0.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/ChrFont0.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/FillPat.o: ../src/lcd_drv/FillPat.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/FillPat.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/FillPat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/FillPat.c  -o ${OBJECTDIR}/_ext/285195972/FillPat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/FillPat.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/FillPat.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/OledDriver.o: ../src/lcd_drv/OledDriver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledDriver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledDriver.c  -o ${OBJECTDIR}/_ext/285195972/OledDriver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/OledDriver.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/OledDriver.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/foo.o: ../src/lcd_drv/foo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/foo.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/foo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/foo.c  -o ${OBJECTDIR}/_ext/285195972/foo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/foo.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/foo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/eadog.o: ../src/lcd_drv/eadog.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/eadog.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/eadog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/eadog.c  -o ${OBJECTDIR}/_ext/285195972/eadog.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/eadog.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/eadog.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/OledGrph.o: ../src/lcd_drv/OledGrph.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledGrph.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledGrph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledGrph.c  -o ${OBJECTDIR}/_ext/285195972/OledGrph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/OledGrph.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/OledGrph.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/lcd_drv.o: ../src/lcd_drv/lcd_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/lcd_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/lcd_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/lcd_drv.c  -o ${OBJECTDIR}/_ext/285195972/lcd_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/lcd_drv.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/lcd_drv.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/OledChar.o: ../src/lcd_drv/OledChar.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledChar.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledChar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledChar.c  -o ${OBJECTDIR}/_ext/285195972/OledChar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/OledChar.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/OledChar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/dogm-graphic.o: ../src/lcd_drv/dogm-graphic.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/dogm-graphic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/dogm-graphic.c  -o ${OBJECTDIR}/_ext/285195972/dogm-graphic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/gfx.o: ../src/gfx.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/gfx.c  -o ${OBJECTDIR}/_ext/1360937237/gfx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/gfx.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/gfx.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/timers.c  -o ${OBJECTDIR}/_ext/1360937237/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/is66.o: ../src/is66.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/is66.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/is66.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/is66.c  -o ${OBJECTDIR}/_ext/1360937237/is66.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/is66.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/is66.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/sca3300.o: ../src/sca3300.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sca3300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sca3300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/sca3300.c  -o ${OBJECTDIR}/_ext/1360937237/sca3300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/sca3300.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sca3300.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/imu.o: ../src/imu.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/imu.c  -o ${OBJECTDIR}/_ext/1360937237/imu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/imu.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/imu.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/60163342/plib_adc2.o: ../src/config/default/peripheral/adc/plib_adc2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/adc/plib_adc2.c  -o ${OBJECTDIR}/_ext/60163342/plib_adc2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc2.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60163342/plib_adc2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60165246/plib_sccp1.o: ../src/config/default/peripheral/ccp/plib_sccp1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60165246" 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/ccp/plib_sccp1.c  -o ${OBJECTDIR}/_ext/60165246/plib_sccp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60165246/plib_sccp1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60165246/plib_sccp2.o: ../src/config/default/peripheral/ccp/plib_sccp2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60165246" 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165246/plib_sccp2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/ccp/plib_sccp2.c  -o ${OBJECTDIR}/_ext/60165246/plib_sccp2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60165246/plib_sccp2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/165463675/plib_cmp1.o: ../src/config/default/peripheral/cmp_dac/plib_cmp1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/165463675" 
	@${RM} ${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/165463675/plib_cmp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/cmp_dac/plib_cmp1.c  -o ${OBJECTDIR}/_ext/165463675/plib_cmp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/165463675/plib_cmp1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60166502/plib_dma.o: ../src/config/default/peripheral/dma/plib_dma.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60166502" 
	@${RM} ${OBJECTDIR}/_ext/60166502/plib_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/60166502/plib_dma.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/dma/plib_dma.c  -o ${OBJECTDIR}/_ext/60166502/plib_dma.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60166502/plib_dma.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60166502/plib_dma.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60177166/plib_opa2.o: ../src/config/default/peripheral/opa/plib_opa2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60177166" 
	@${RM} ${OBJECTDIR}/_ext/60177166/plib_opa2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177166/plib_opa2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/opa/plib_opa2.c  -o ${OBJECTDIR}/_ext/60177166/plib_opa2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60177166/plib_opa2.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60177166/plib_opa2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60178356/plib_pwm.o: ../src/config/default/peripheral/pwm/plib_pwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60178356" 
	@${RM} ${OBJECTDIR}/_ext/60178356/plib_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178356/plib_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/pwm/plib_pwm.c  -o ${OBJECTDIR}/_ext/60178356/plib_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60178356/plib_pwm.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60178356/plib_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60178755/plib_qei1.o: ../src/config/default/peripheral/qei/plib_qei1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/qei/plib_qei1.c  -o ${OBJECTDIR}/_ext/60178755/plib_qei1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi3_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868329136/plib_spi3_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi2_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868329136/plib_spi2_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/initialization.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/ChrFont0.o: ../src/lcd_drv/ChrFont0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/ChrFont0.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/ChrFont0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/ChrFont0.c  -o ${OBJECTDIR}/_ext/285195972/ChrFont0.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/ChrFont0.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/ChrFont0.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/FillPat.o: ../src/lcd_drv/FillPat.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/FillPat.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/FillPat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/FillPat.c  -o ${OBJECTDIR}/_ext/285195972/FillPat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/FillPat.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/FillPat.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/OledDriver.o: ../src/lcd_drv/OledDriver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledDriver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledDriver.c  -o ${OBJECTDIR}/_ext/285195972/OledDriver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/OledDriver.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/OledDriver.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/foo.o: ../src/lcd_drv/foo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/foo.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/foo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/foo.c  -o ${OBJECTDIR}/_ext/285195972/foo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/foo.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/foo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/eadog.o: ../src/lcd_drv/eadog.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/eadog.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/eadog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/eadog.c  -o ${OBJECTDIR}/_ext/285195972/eadog.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/eadog.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/eadog.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/OledGrph.o: ../src/lcd_drv/OledGrph.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledGrph.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledGrph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledGrph.c  -o ${OBJECTDIR}/_ext/285195972/OledGrph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/OledGrph.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/OledGrph.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/lcd_drv.o: ../src/lcd_drv/lcd_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/lcd_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/lcd_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/lcd_drv.c  -o ${OBJECTDIR}/_ext/285195972/lcd_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/lcd_drv.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/lcd_drv.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/OledChar.o: ../src/lcd_drv/OledChar.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledChar.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/OledChar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/OledChar.c  -o ${OBJECTDIR}/_ext/285195972/OledChar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/OledChar.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/OledChar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285195972/dogm-graphic.o: ../src/lcd_drv/dogm-graphic.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/285195972" 
	@${RM} ${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d 
	@${RM} ${OBJECTDIR}/_ext/285195972/dogm-graphic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/lcd_drv/dogm-graphic.c  -o ${OBJECTDIR}/_ext/285195972/dogm-graphic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285195972/dogm-graphic.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/gfx.o: ../src/gfx.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/gfx.c  -o ${OBJECTDIR}/_ext/1360937237/gfx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/gfx.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/gfx.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/timers.c  -o ${OBJECTDIR}/_ext/1360937237/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/is66.o: ../src/is66.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/is66.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/is66.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/is66.c  -o ${OBJECTDIR}/_ext/1360937237/is66.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/is66.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/is66.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/sca3300.o: ../src/sca3300.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sca3300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sca3300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/sca3300.c  -o ${OBJECTDIR}/_ext/1360937237/sca3300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/sca3300.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sca3300.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/imu.o: ../src/imu.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/imu.c  -o ${OBJECTDIR}/_ext/1360937237/imu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/imu.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -msmall-data -O2 -I"../src" -I"../src/config/default" -Werror -Wall -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/imu.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
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
