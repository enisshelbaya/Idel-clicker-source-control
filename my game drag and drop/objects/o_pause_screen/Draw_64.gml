/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor



	draw_set_alpha(0.8)
	draw_roundrect_color_ext(view_wport[0]*0.05,view_hport[0]*0.39,view_wport[0]*0.95,view_hport[0]*0.62,50,50,c_black,c_black,0)
	draw_set_alpha(1)
	draw_sprite(s_close,0,x,y)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(Welcome)
	draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.45, "Welcome Back!",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
	draw_set_font(title_screen)
	
	
	if(o_save.time_diffrence < 60)

		{
		draw_text_transformed(view_wport[0]*0.5,x_1, "you were gone for\n "  + string(o_save.time_diffrence) + " Seconds",1*(view_wport[0]/768),1*(view_wport[0]/768),0 )
			if (o_save.Currency_increase > 100000000) {draw_text_transformed(view_wport[0]*0.5,x_2,  "and earned: " + string(number_abbreviated),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
			else {draw_text_transformed(view_wport[0]*0.5,x_2,  "and earned: " + string(round (o_save.Currency_increase)),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
		}
	if( o_save.time_diffrence/60 > 1 && o_save.time_diffrence/60 < 61)
		{
		draw_text_transformed(view_wport[0]*0.5,x_1, "you were gone for\n " + string(floor(o_save.time_diffrence/60)) + " minutes " + string(round(o_save.time_diffrence-(floor(o_save.time_diffrence/60)*60)))+ " seconds",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
		if (o_save.Currency_increase > 100000000) {draw_text_transformed(view_wport[0]*0.5,x_2,  "and earned: " + string(number_abbreviated),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
		else {draw_text_transformed(view_wport[0]*0.5,x_2,  "and earned: " + string(round (o_save.Currency_increase)),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
		}
	if( o_save.time_diffrence/3600 > 1 && o_save.time_diffrence/3600 <= 24)
		{
		draw_text_transformed(view_wport[0]*0.5,x_1, "you were gone for\n " +  string(floor(o_save.time_diffrence/3600)) + " Hours " + string(round((o_save.time_diffrence-(floor(o_save.time_diffrence/3600)*3600))/60)) + " minutes " + string(round(o_save.time_diffrence-(floor(o_save.time_diffrence/60)*60)))+ " seconds",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
		if (o_save.Currency_increase > 100000000) {draw_text_transformed(view_wport[0]*0.5,x_2,  "and earned: " + string(number_abbreviated),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
		else {draw_text_transformed(view_wport[0]*0.5,x_2,  "and earned: " + string(round (o_save.Currency_increase)),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
		}
	if( o_save.time_diffrence/86400 > 1 )
		{
		draw_text_transformed(view_wport[0]*0.5,x_1, "you were gone for\n " +  string(floor(o_save.time_diffrence/86400)) + " Days " + string(round((o_save.time_diffrence-(floor(o_save.time_diffrence/86400)*86400))/3600)) + " hours " + string(round((o_save.time_diffrence-(floor(o_save.time_diffrence/3600)*3600))/60)) + " minutes " + string(round(o_save.time_diffrence-(floor(o_save.time_diffrence/60)*60)))+ " seconds",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
		if (o_save.Currency_increase > 100000000) {draw_text_transformed(view_wport[0]*0.5,x_2,  "and earned: " + string(number_abbreviated),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
		else {draw_text_transformed(view_wport[0]*0.5,x_2,  "and earned: " + string(round (o_save.Currency_increase)),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
		}
	




