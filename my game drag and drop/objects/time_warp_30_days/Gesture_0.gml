
		if (global.stats.random_vars.diamond_amount> 150)
		{
		global.stats.random_vars.Currency_amount += (global.stats.random_vars.manager_strength*2592000);
		global.stats.random_vars.diamond_amount -= 150;
		global.stats.random_vars.total_upgrades += 1;
		global.stats.random_vars.Total_lifetime_cookies += (global.stats.random_vars.manager_strength*2592000)
		}
		else {audio_play_sound(error,1,false)}