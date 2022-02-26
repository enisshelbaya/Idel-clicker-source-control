/// @description Insert description here
// You can write your code in this editor

		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.pans)
		{
		global.stats.random_vars.manager_strength += 260;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.pans;
		global.stats.counter_manager.pans += 1
		global.stats.cost_manager.pans = 130000*power(1.175,global.stats.counter_manager.pans)
		}
		else {audio_play_sound(error,1,false)}

