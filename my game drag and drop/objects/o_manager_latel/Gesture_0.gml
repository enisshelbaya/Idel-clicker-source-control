/// @description Insert description here
// You can write your code in this editor

		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.latel)
		{
		global.stats.random_vars.manager_strength += 8;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.latel;
		global.stats.counter_manager.latel += 1
		global.stats.cost_manager.latel = 1100*power(1.175,global.stats.counter_manager.latel)
		}
		else {audio_play_sound(error,1,false)}
