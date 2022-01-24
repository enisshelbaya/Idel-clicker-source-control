/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.taps >100000  && global.stats.counter_manager.counter_manager_power_100 > 83)
{
		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.cost_manager_power_1000)
		{
		global.stats.random_vars.manager_strength += 1000;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.cost_manager_power_1000;
		global.stats.counter_manager.counter_manager_power_1000 += 1
		global.stats.cost_manager.cost_manager_power_1000 = 20000000*power(1.175,global.stats.counter_manager.counter_manager_power_1000)
		}
}