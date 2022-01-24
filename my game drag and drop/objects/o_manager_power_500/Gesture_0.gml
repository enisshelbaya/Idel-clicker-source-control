/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.taps >200000  && global.stats.counter_manager.counter_manager_power_250 > 83)
{
		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.cost_manager_power_500)
		{
		global.stats.random_vars.manager_strength += 500;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.cost_manager_power_500;
		global.stats.counter_manager.counter_manager_power_500 += 1
		global.stats.cost_manager.cost_manager_power_500 = 1400000*power(1.175,global.stats.counter_manager.counter_manager_power_500)
		}
}