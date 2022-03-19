/// @description Insert description here
// You can write your code in this editor

		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.refrigerator)
		{
		global.stats.random_vars.manager_strength += 1400000000000000;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.refrigerator;
		global.stats.counter_manager.refrigerator += 1
		global.stats.cost_manager.refrigerator = 23000000000000000000000000000000*power(1.175,global.stats.counter_manager.refrigerator)
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}
