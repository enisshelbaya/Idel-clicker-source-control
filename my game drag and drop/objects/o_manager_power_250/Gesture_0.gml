/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.taps > 12000 && global.stats.counter_manager.counter_manager_power_100 > 65)
{
		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.cost_manager_power_250)
		{
		global.stats.random_vars.manager_strength += 250;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.cost_manager_power_250;
		global.stats.counter_manager.counter_manager_power_250 += 1
		global.stats.cost_manager.cost_manager_power_250 = 130000*power(1.175,global.stats.counter_manager.counter_manager_power_250)
		}
}
