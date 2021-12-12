/// @description Insert description here
// You can write your code in this editor
// loading in variables from json file
if (file_exists("savedgame.save"))
{
	var _buffer = buffer_load("savedgame.save");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	global.stats = json_parse(_string)
	
}
// gets current time since the unix and converts into seconds
unix_start_point = date_create_datetime(1970,1,1,0,0,0)
Current_time = date_second_span(unix_start_point,date_current_datetime())
// calculates the time diffrence between last saved time and the current time
time_diffrence = Current_time - global.stats.random_vars.time;
// calculates the increase in currency amount 
global.stats.random_vars.Currency_amount += time_diffrence * global.stats.random_vars.manager_strength;
show_debug_message(time_diffrence)


