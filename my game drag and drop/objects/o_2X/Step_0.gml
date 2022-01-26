/// @description Insert description here
// You can write your code in this editor
y+=3;

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id))
   {

    instance_destroy();
	global.stats.multiplyers.twox_click_power_count = 1; 
    global.stats.multiplyers.twox_click_power_exist = 0; 
	global.stats.random_vars.Clicker_Power = global.stats.random_vars.Clicker_Power * 2;

   }

