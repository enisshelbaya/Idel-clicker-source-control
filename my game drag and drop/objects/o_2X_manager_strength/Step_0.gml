/// @description Insert description here
// You can write your code in this edito
if (global.stats.multiplyers.twox_manager_strength_count  = 1)
{
_framerate_countdown -=1

	if (_framerate_countdown = 0)
	{
	countdown-=1
	_framerate_countdown = 60

	}
	

}

if (countdown = 0)

{

global.stats.multiplyers.twox_manager_strength_count  = 0;
_framerate_countdown = 60;
countdown = 30; 
global.stats.random_vars.manager_strength = global.stats.random_vars.manager_strength / 2;
show_debug_message("coundown has ended")

}