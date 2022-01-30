/// @description Insert description here
// You can write your code in this edito
if (global.stats.multiplyers.fivex_click_power_count = 1)
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

global.stats.multiplyers.fivex_click_power_count = 0;
_framerate_countdown = 60;
countdown = 30; 
global.stats.random_vars.Clicker_Power = global.stats.random_vars.Clicker_Power / 5;
show_debug_message("coundown has ended")

}