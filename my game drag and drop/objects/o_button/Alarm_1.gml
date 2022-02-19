/// @description Insert description here
// You can write your code in this editor



tps = tps/2.5 

if (tps > 7)
{
	alarm[2] = room_speed*0.1
	five_x = true
}
else if (tps > 5)
{
	alarm[4] = room_speed*0.1
	four_x = true
}
else if (tps > 4)
{
	alarm[6] = room_speed*0.1
	three_x = true
}
else if (tps > 3)
{
	alarm[8] = room_speed*0.1
	two_x = true
	show_debug_message("fogvifhgbpaidfngvpaig")
}

tps = 0;
alarm[1] = room_speed*2.5