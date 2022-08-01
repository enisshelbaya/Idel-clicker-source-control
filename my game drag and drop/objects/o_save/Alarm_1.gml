/// @description Insert description here
// You can write your code in this editor

Current_time = date_second_span(unix_start_point,date_current_datetime())
time_diffrence = Current_time - global.stats.random_vars.time;

if (time_diffrence > 60 )
{
		instance_activate_object(o_pause_screen)
}
// gets current time since the unix and converts into seconds
		
// calculates the time diffrence between last saved time and the current time
// calculates the increase in currency amount 
		Currency_increase = time_diffrence * global.stats.random_vars.manager_strength
		global.stats.random_vars.Currency_amount += Currency_increase;
		global.stats.random_vars.Total_lifetime_cookies += Currency_increase;
		