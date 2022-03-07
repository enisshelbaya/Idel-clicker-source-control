/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.Total_lifetime_cookies > 1000000) // makers sure that this code will not run when the variable is equal to 0
{
		num_process = global.stats.random_vars.Total_lifetime_cookies;
		number_array=[]
		while (num_process >= 1){
		    num_process = num_process / 1000;
		    array_push(number_array,floor(frac(num_process) * 1000));
		}
		number_abbreviated = Number_Abbreviate(number_array)
}
if (global.stats.random_vars.tap_production > 1000000) // makers sure that this code will not run when the variable is equal to 0
{
		num_process = global.stats.random_vars.tap_production;
		number_array=[]
		while (num_process >= 1){
		    num_process = num_process / 1000;
		    array_push(number_array,floor(frac(num_process) * 1000));
		}
		number_abbreviated = Number_Abbreviate(number_array)
}
