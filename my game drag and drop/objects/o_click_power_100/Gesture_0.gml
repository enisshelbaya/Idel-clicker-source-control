/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.Currency_amount > global.stats.cost_click.cost_click_power_100)
{
global.stats.random_vars.Clicker_Power += 100
global.stats.random_vars.Currency_amount -= global.stats.cost_click.cost_click_power_100;
global.stats.counter_click_power.counter_click_power_100 += 1
global.stats.cost_click.cost_click_power_100 = 1100*power(1.175,global.stats.counter_click_power.counter_click_power_100)

}
