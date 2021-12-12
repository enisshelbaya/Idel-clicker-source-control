/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.Currency_amount > global.stats.cost_click.cost_click_power_50)
{
global.stats.random_vars.Clicker_Power += 50
global.stats.random_vars.Currency_amount -= global.stats.cost_click.cost_click_power_50;
global.stats.cost_click.cost_click_power_50 += 1000
global.stats.counter_click_power.counter_click_power_50 += 1
}
