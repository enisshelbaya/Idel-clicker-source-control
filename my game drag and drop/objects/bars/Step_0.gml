/// @description Insert description here
// You can write your code in this editor
if (second = 200)
{
	
run_alarm_0 = false
}
if (second = 0) 
{
run_alarm_0 = true
}
if (global.stats.random_vars.bar_taps > 800)
{
run_alarm_4 = true
alarm[4] = room_speed*0.5
global.stats.random_vars.bar_taps = 0;

}

