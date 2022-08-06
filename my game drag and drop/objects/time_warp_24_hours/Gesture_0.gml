
		if (global.stats.random_vars.diamond_amount> 3)
		{
		global.stats.random_vars.Currency_amount += (global.stats.random_vars.manager_strength*86400)
		global.stats.random_vars.Total_lifetime_cookies += (global.stats.random_vars.manager_strength*86400);
		global.stats.random_vars.diamond_amount -= 3;
		global.stats.random_vars.total_upgrades += 1;
		}
		else {audio_play_sound(error,1,false)}

 