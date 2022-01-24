/// @description Insert description here
// You can write your code in this editor
if ( global.stats.random_vars.taps > 500)
{
	image_index = 0;
		if (global.stats.random_vars.Currency_amount > global.stats.cost_click.cost_click_power_50)
			{
		global.stats.random_vars.Clicker_Power += 10
		global.stats.random_vars.Currency_amount -= global.stats.cost_click.cost_click_power_50;
		global.stats.counter_click_power.counter_click_power_50 += 1
		global.stats.cost_click.cost_click_power_50 = 100*power(1.175,global.stats.counter_click_power.counter_click_power_50)
		}
}

else

{
	image_index = 1;	
}