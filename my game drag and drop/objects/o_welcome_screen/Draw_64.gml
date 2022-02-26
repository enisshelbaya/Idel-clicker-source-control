/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (global.run = true && o_save.run = true)
{
	if (o_save.Currency_increase > 100000000)   // makers sure
	{
				num_process = o_save.Currency_increase;
				number_array=[]
				while (num_process >= 1)
				{
				    num_process = num_process / 1000;
				    array_push(number_array,floor(frac(num_process) * 1000));
				}
				number_abbreviated = Number_Abbreviate(number_array)
		}
	draw_set_alpha(0.8)
	draw_roundrect_color_ext(view_wport[0]*0.05,view_hport[0]*0.39,view_wport[0]*0.95,view_hport[0]*0.62,50,50,c_black,c_black,0)
	draw_set_alpha(1)
	draw_sprite(s_close,0,x,y)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_middle)
	draw_set_font(Welcome)
	draw_text(view_wport[0]*0.5,view_hport[0]*0.45, "Welcome Back!")
	draw_set_font(title_screen)
	
	
	if(o_save.time_diffrence < 60)

		{
		draw_text(view_wport[0]*0.5,x_1, "you were gone for\n "  + string(o_save.time_diffrence) + " Seconds" )
			if (o_save.Currency_increase > 100000000) {draw_text(view_wport[0]*0.5,x_2,  "and earned: " + string(number_abbreviated))}
			else {draw_text(view_wport[0]*0.5,x_2,  "and earned: " + string(round (o_save.Currency_increase)))}
		}
	if( o_save.time_diffrence/60 > 1 && o_save.time_diffrence/60 < 61)
		{
		draw_text(view_wport[0]*0.5,x_1, "you were gone for\n " + string(floor(o_save.time_diffrence/60)) + " minutes " + string(round(o_save.time_diffrence-(floor(o_save.time_diffrence/60)*60)))+ " seconds")
		if (o_save.Currency_increase > 100000000) {draw_text(view_wport[0]*0.5,x_2,  "and earned: " + string(number_abbreviated))}
		else {draw_text(view_wport[0]*0.5,x_2,  "and earned: " + string(round (o_save.Currency_increase)))}
		}
	if( o_save.time_diffrence/3600 > 1 && o_save.time_diffrence/3600 <= 12)
		{
		draw_text(view_wport[0]*0.5,x_1, "you were gone for\n " +  string(floor(o_save.time_diffrence/3600)) + " Hours " + string(round((o_save.time_diffrence-(floor(o_save.time_diffrence/3600)*3600))/60)) + " minutes " + string(round(o_save.time_diffrence-(floor(o_save.time_diffrence/60)*60)))+ " seconds")
		if (o_save.Currency_increase > 100000000) {draw_text(view_wport[0]*0.5,x_2,  "and earned: " + string(number_abbreviated))}
		else {draw_text(view_wport[0]*0.5,x_2,  "and earned: " + string(round (o_save.Currency_increase)))}
		}
	if( o_save.time_diffrence/86400 > 1 )
		{
		draw_text(view_wport[0]*0.5,x_1, "you were gone for\n " +  string(floor(o_save.time_diffrence/86400)) + " Days " + string(round((o_save.time_diffrence-(floor(o_save.time_diffrence/86400)*86400))/3600)) + " hours " + string(round((o_save.time_diffrence-(floor(o_save.time_diffrence/3600)*3600))/60)) + " minutes " + string(round(o_save.time_diffrence-(floor(o_save.time_diffrence/60)*60)))+ " seconds")
		if (o_save.Currency_increase > 100000000) {draw_text(view_wport[0]*0.5,x_2,  "and earned: " + string(number_abbreviated))}
		else {draw_text(view_wport[0]*0.5,x_2,  "and earned: " + string(round (o_save.Currency_increase)))}
		}
	

}

else
{
instance_destroy()
}
