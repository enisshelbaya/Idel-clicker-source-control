/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.taps > 1500 && global.stats.counter_manager.counter_manager_power_1 > 65)
{
		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.cost_manager_power_10)
		{
		global.stats.random_vars.manager_strength += 10;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.cost_manager_power_10;
		global.stats.counter_manager.counter_manager_power_10 += 1
		global.stats.cost_manager.cost_manager_power_10 = 100*power(1.175,global.stats.counter_manager.counter_manager_power_10)
		}
}
