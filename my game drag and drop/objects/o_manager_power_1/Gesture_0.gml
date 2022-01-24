/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.taps > 1000)
{
	image_index = 0;
		if (global.stats.random_vars.Currency_amount> global.stats.cost_manager.cost_manager_power_1)
		{
		global.stats.random_vars.manager_strength += 1;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.cost_manager_power_1;
		global.stats.counter_manager.counter_manager_power_1 += 1
		global.stats.cost_manager.cost_manager_power_1 = 15*power(1.175,global.stats.counter_manager.counter_manager_power_1)
		}
}

else 
{
image_index = 1;	
}



