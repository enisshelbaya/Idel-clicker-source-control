/// @description Insert description here
// You can write your code in this editor
		if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.pots)
		{
		global.stats.random_vars.manager_strength += 1400;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.pots;
		global.stats.counter_manager.pots += 1
		global.stats.cost_manager.pots = 1400000*power(1.175,global.stats.counter_manager.pots)
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}
