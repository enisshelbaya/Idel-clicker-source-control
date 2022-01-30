/// @description Insert description here
// You can write your code in this editor
y+=3;

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id))
   {

    instance_destroy();
	global.stats.multiplyers.fivex_manager_strength_count = 1; // make sure to add the game end clause  
    global.stats.multiplyers.fivex_manager_strength_exist = 0; 
	global.stats.random_vars.manager_strength = global.stats.random_vars.manager_strength * 5;

   }