/// @description Insert description here
// You can write your code in this editor

	if (global.stats.random_vars.Currency_amount > global.stats.click_power.click_power_cost)
		{
			
		global.stats.random_vars.Clicker_Power *= 2
		global.stats.random_vars.Currency_amount -= global.stats.click_power.click_power_cost;
		global.stats.click_power.click_power_level += 1
		global.stats.click_power.click_power_cost = 12500*power(1.175,global.stats.click_power.click_power_level)
		}
