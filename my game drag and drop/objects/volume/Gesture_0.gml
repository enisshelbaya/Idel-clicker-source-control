/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.vol = 0)
	{
		global.stats.random_vars.vol = 1
		global.stats.random_vars.volume_index = 1
	
	}

else 
	{
		global.stats.random_vars.vol = 0
		global.stats.random_vars.volume_index = 0
	
	}
image_xscale=0.12*(view_wport[0]/768);
image_yscale=0.12*(view_wport[0]/768);
alarm[0]=room_speed/15