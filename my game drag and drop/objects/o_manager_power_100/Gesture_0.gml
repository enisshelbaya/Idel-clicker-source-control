/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.taps >5000  && global.stats.counter_manager.counter_manager_power_50 > 65)
{
		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.cost_manager_power_100)
		{
		global.stats.random_vars.manager_strength += 100;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.cost_manager_power_100;
		global.stats.counter_manager.counter_manager_power_100 += 1
		global.stats.cost_manager.cost_manager_power_100 = 12000*power(1.175,global.stats.counter_manager.counter_manager_power_100)
		}
}