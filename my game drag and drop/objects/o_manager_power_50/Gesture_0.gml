/// @description Insert description here
// You can write your code in this editor

		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.cost_manager_power_50)
		{
		global.stats.random_vars.manager_strength += 50;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.cost_manager_power_50;
		global.stats.counter_manager.counter_manager_power_50 += 1
		global.stats.cost_manager.cost_manager_power_50 = 1100*power(1.175,global.stats.counter_manager.counter_manager_power_50)
		}
