/// @description Insert description here
// You can write your code in this editor

		if (global.stats.random_vars.Currency_amount> global.stats.cost_manager.coffee)
		{
		global.stats.random_vars.manager_strength += 0.1;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.coffee;
		global.stats.counter_manager.coffee += 1
		global.stats.cost_manager.coffee = 10*power(1.175,global.stats.counter_manager.coffee)
		
		}




