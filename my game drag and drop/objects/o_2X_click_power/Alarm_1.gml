/// @description Insert description here
// You can write your code in this editor
if (room = r_main)
{
instance_create_layer(irandom_range(view_hport[0]/10,view_hport[0]*0.25),irandom_range(view_wport[0]/10 ,view_wport[0]*0.9),"instances",o_2X)
}
global.stats.multiplyers.twox_click_power_exist  = 1;
o_2X_click_power.alarm[1] = room_speed*120;
show_debug_message("lolololololololololol")