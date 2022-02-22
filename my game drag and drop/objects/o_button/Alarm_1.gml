/// @description Insert description here
// You can write your code in this editor



tps = tps/2

if (tps > 7)
{
	alarm[2] = room_speed*0.1
	global._power_times = 5
}
else if (tps > 5)
{
	alarm[4] = room_speed*0.1
	global._power_times = 4
}
else if (tps > 4)
{
	alarm[6] = room_speed*0.1
	global._power_times = 3
}
else if (tps > 3)
{
	alarm[8] = room_speed*0.1
	global._power_times = 2
}
else
{
	global._power_times = 1
}

tps = 0;
alarm[1] = room_speed*2