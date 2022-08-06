/// @description Insert description here
// You can write your code in this editor
		if (global.stats.random_vars.diamond_amount> 45)
		{
		global.stats.random_vars.Currency_amount += (global.stats.random_vars.manager_strength*1209600);
		global.stats.random_vars.diamond_amount -= 45;
		global.stats.random_vars.total_upgrades += 1;
		global.stats.random_vars.Total_lifetime_cookies += (global.stats.random_vars.manager_strength*1209600)
		}
		else {audio_play_sound(error,1,false)}
