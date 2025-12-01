#include "faults.h"

bool check_fault(void)
{
	if (V.fault_active) {
		return true;
	} else {
		return false;
	}
}

void set_fault(uint32_t status, uintptr_t context)
{
	/*
	 * clear enable flags to see if we can clear the inverter driver error(s) later
	 */
	if (!PWMF15_Get() || !PWMF5_Get() || !PWMF6_Get() || !check_adc_ivref()) {
		V.fault_ticks = 0;
		V.fault_count++;
		V.fault_active = true;
		V.fault_source = context;
	}
}

void clear_fault_flag(void)
{
	V.fault_active = false;
}

void init_faults(void)
{
	/*
	 * fault interrupt call-backs for PWM
	 */
	MCPWM_CallbackRegister(MCPWM_CH_1, set_fault, 1);
	MCPWM_CallbackRegister(MCPWM_CH_2, set_fault, 2);
	MCPWM_CallbackRegister(MCPWM_CH_3, set_fault, 3);
	MCPWM_CallbackRegister(MCPWM_CH_4, set_fault, 4);
}