/// @description Insert description here
// You can write your code in this editor
if (global.stats.random_vars.Clicker_Power > 0)   // makers sure that this code will not run when the variable is equal to 0
{
		num_process = global.stats.random_vars.Clicker_Power;
		number_array=[]
		while (num_process >= 1)
		{
		    num_process = num_process / 1000;
		    array_push(number_array,floor(frac(num_process) * 1000));
		}
		number_abbreviated = Number_Abbreviate(number_array)
}

if (global.stats.random_vars.Clicker_Power > 1000 ) 
{
draw_set_font(click_effect);
draw_text_colour(x, y,"+" + number_abbreviated , c_white, c_white, c_white, c_white, alpha);
}
else {
draw_set_font(click_effect);
draw_text_colour(x, y,"+" + string(global.stats.random_vars.Clicker_Power) , c_white, c_white, c_white, c_white, alpha);
}