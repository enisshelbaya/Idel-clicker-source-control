/// @description Insert description here
// You can write your code in this editor

		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.microwave)
		{
		global.stats.random_vars.manager_strength += 89000000000000000000;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.microwave;
		global.stats.counter_manager.microwave += 1
		global.stats.cost_manager.microwave = 10000000000000000000000000000000000000000000*power(1.175,global.stats.counter_manager.microwave)
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}
