/// @description Insert description here
// You can write your code in this editor

		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.can_opener)
		{
		global.stats.random_vars.manager_strength += 65000000;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.can_opener;
		global.stats.counter_manager.can_opener += 1
		global.stats.cost_manager.can_opener = 14000000000000*power(1.175,global.stats.counter_manager.can_opener)
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}
