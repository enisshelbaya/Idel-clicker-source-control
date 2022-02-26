/// @description Insert description here
// You can write your code in this editor
	if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.spatula)
		{
		global.stats.random_vars.manager_strength += 1;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.spatula;
		global.stats.counter_manager.spatula += 1
		global.stats.cost_manager.spatula = 100*power(1.175,global.stats.counter_manager.spatula)
		}
		else {audio_play_sound(error,1,false)}
