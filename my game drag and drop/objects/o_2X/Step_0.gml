/// @description Insert description here
// You can write your code in this editor
y+=3;

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id))
   {

    instance_destroy();
	o_2X_click_power.count = 1;
    o_2X_click_power.twox_exist = 0; 
	global.stats.random_vars.Clicker_Power = global.stats.random_vars.Clicker_Power * 2;

   }