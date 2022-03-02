/// @description Insert description here
// You can write your code in this editor
if (o_manager_hud.Golden_amount > 1000)   // makers sure that this code will not run when the variable is equal to 0
{
		num_process = o_manager_hud.Golden_amount ;
		number_array=[]
		while (num_process >= 1)
		{
		    num_process = num_process / 1000;
		    array_push(number_array,floor(frac(num_process) * 1000));
		}
		number_abbreviated = Number_Abbreviate(number_array)
}

if (o_manager_hud.Golden_amount  > 1000 ) 
{
draw_set_font(click_effect);
draw_text_transformed_colour(x, y,"+" + number_abbreviated,1*(view_wport[0]/768),1*(view_wport[0]/768),0, c_white, c_white, c_white, c_white, alpha);
}
else {
draw_set_font(click_effect);
draw_text_transformed_colour(x, y,"+" + string(o_manager_hud.Golden_amount ) ,1*(view_wport[0]/768),1*(view_wport[0]/768),0, c_white, c_white, c_white, c_white, alpha);
}