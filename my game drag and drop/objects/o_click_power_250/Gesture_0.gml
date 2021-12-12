/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.Currency_amount > global.stats.cost_click.cost_click_power_250)
{
global.stats.random_vars.Clicker_Power += 250
global.stats.random_vars.Currency_amount -= global.stats.cost_click.cost_click_power_250;
global.stats.cost_click.cost_click_power_250 += 4500
global.stats.counter_click_power.counter_click_power_250 += 1
}
