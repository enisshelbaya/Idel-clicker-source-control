
global.quick_buy_count +=1
if (global.quick_buy_count > global.quick_buy_time)
{
			if (global.stats.random_vars.Currency_amount > global.stats.cost_manager.freezer)
		{
		global.stats.random_vars.manager_strength += 5400000000000000000;
		global.stats.random_vars.Currency_amount -= global.stats.cost_manager.freezer;
		global.stats.counter_manager.freezer += 1
		global.stats.cost_manager.freezer = 74000000000000000000000000000000000000000*power(1.175,global.stats.counter_manager.freezer)
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}
}
	