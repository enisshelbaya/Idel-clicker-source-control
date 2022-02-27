/// @description Insert description here
// You can write your code in this editor
if (room = r_main)
{
instance_create_depth(irandom_range(70,698), view_hport[0]*0.15,150,o_golden_boys)
audio_play_sound(ice_in_a_cup,10,false)
alarm[1]=room_speed*60
}