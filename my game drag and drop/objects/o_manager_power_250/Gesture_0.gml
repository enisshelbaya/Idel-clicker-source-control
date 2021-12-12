/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.cost_manager_power_250)
{
global.stats.random_vars.manager_strength += 250;
global.stats.random_vars.Currency_amount -= global.stats.cost_manager.cost_manager_power_250;
global.stats.cost_manager.cost_manager_power_250 += 150000
global.stats.counter_manager.counter_manager_power_250 += 1
}
