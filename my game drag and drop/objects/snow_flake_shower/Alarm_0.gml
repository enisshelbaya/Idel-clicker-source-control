/// @description Insert description here
// You can write your code in this editor
COE = global.stats.random_vars.manager_strength/100000
instance_create_depth(irandom(view_wport[0]),irandom(view_hport[0]*0.1),depth,o_snowflake)
if (COE <16)
alarm[0] = room_speed/COE
else
{alarm[0] = room_speed/15}