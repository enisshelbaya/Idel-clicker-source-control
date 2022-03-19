
global.quick_buy_count +=1
if (global.quick_buy_count > global.quick_buy_time)
{
			if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.meat_slicer)
		{
		global.stats.random_vars.manager_strength += 24000000000000000;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.meat_slicer;
		global.stats.counter_manager.meat_slicer += 1
		global.stats.cost_manager.meat_slicer = 29000000000000000000000000000000000*power(1.175,global.stats.counter_manager.meat_slicer)
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}
}
	