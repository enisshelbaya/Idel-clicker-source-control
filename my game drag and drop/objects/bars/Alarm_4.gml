/// @description Insert description here
// You can write your code in this editor

if (run_alarm_4 = true && golden_shower < 21)
{
instance_create_depth(irandom_range(70,698), view_hport[0]*0.15,150,o_golden_boys)
golden_shower +=1 
alarm[4]=room_speed*0.5
}
if (golden_shower > 20)
{
run_alarm_4 = false
golden_shower = 0
}

