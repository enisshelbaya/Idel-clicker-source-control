
		if (global.stats.random_vars.diamond_amount> 90)
		{
		global.stats.random_vars.Currency_amount += (global.stats.random_vars.manager_strength*2592000);
		global.stats.random_vars.diamond_amount -= 90;
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}