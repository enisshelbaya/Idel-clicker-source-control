/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
global.quick_buy_count +=1
if (global.quick_buy_count > global.quick_buy_time)
{
		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.scissors)
		{
		global.stats.random_vars.manager_strength += 7800;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.scissors;
		global.stats.counter_manager.scissors += 1
		global.stats.cost_manager.scissors = 20000000*power(1.175,global.stats.counter_manager.scissors)
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}
}
	