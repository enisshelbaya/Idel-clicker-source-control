/// @description Insert description here
// You can write your code in this
if (global.drawn=0)
{	
	global.drawn=1
 _id = instance_create_layer(x,y,"Effect",o_statistics)
}
else
{ 
	global.drawn = 0
instance_destroy(_id)
}
audio_play_sound(button_click,50,false)
image_xscale=0.25;
image_yscale=0.25;
alarm[0]=room_speed/15