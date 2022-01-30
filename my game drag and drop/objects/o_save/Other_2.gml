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
	   
/// checks weather any multiplyers were on and makes sure to returen their values 
/// to the proper number and turn of therir countdown sequence 

// 2x click power multiplyer 
if (global.stats.multiplyers.twox_click_power_count = 1)
{
global.stats.multiplyers.twox_click_power_count = 0;
global.stats.random_vars.Clicker_Power = global.stats.random_vars.Clicker_Power / 2;

}

// 2x manager strength 

if (global.stats.multiplyers.twox_manager_strength_count = 1)
{
global.stats.multiplyers.twox_manager_strength_count = 0;
global.stats.random_vars.manager_strength = global.stats.random_vars.manager_strength / 2;

}

// 5x click power multiplyer 
if (global.stats.multiplyers.fivex_click_power_count = 1)
{
global.stats.multiplyers.fivex_click_power_count = 0;
global.stats.random_vars.Clicker_Power = global.stats.random_vars.Clicker_Power / 5;

}

// 5x manager strength 

if (global.stats.multiplyers.fivex_manager_strength_count = 1)
{
global.stats.multiplyers.fivex_manager_strength_count = 0;
global.stats.random_vars.manager_strength = global.stats.random_vars.manager_strength / 5;

}

