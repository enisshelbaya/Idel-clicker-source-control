/// @description Insert description here
// You can write your code in this editor
y+=3;

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id))
   {

    instance_destroy();
	o_2X_manager_strength.count = 1;
    o_2X_manager_strength.twox_exist = 0; 
	global.stats.random_vars.manager_strength = global.stats.random_vars.manager_strength * 2;

   }