/// @description Insert description here
// You can write your code in this editor

		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.wok)
		{
		global.stats.random_vars.manager_strength += 47;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.wok;
		global.stats.counter_manager.wok += 1
		global.stats.cost_manager.wok = 12000*power(1.175,global.stats.counter_manager.wok)
		}
		else {audio_play_sound(error,1,false)}
