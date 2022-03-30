/// @description Insert description here
// You can write your code in this editor
/// draws the big box	

draw_roundrect_color_ext(view_wport[0]*0.05,view_hport[0]*0.39,view_wport[0]*0.95,view_hport[0]*0.62,50,50,c_black,c_black,0)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(Welcome)
// draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.45, "Challenge begins in ",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
// draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.45, "Challenge ends in ",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
 draw_text_transformed(view_wport[0]*0.51,view_hport[0]*0.5, "No upcoming challenge ",0.98*(view_wport[0]/768),0.98*(view_wport[0]/768),0)
draw_set_font(title_screen)
draw_set_color(c_white)

display_countdown = false

if (display_countdown = true)
{
	if(time_diffrence < 60)
		{
		draw_text_transformed(view_wport[0]*0.5,x_1,string(time_diffrence) + " Seconds",1*(view_wport[0]/768),1*(view_wport[0]/768),0 )
		}
	if(time_diffrence/60 > 1 && time_diffrence/60 < 61)
		{
		draw_text_transformed(view_wport[0]*0.5,x_1,string(floor(time_diffrence/60)) + " minutes " + string(round(time_diffrence-(floor(time_diffrence/60)*60)))+ " seconds",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
		}
	if(time_diffrence/3600 > 1 && time_diffrence/3600 <= 24)
		{
		draw_text_transformed(view_wport[0]*0.5,x_1,string(floor(time_diffrence/3600)) + " Hours " + string(round((time_diffrence-(floor(time_diffrence/3600)*3600))/60)) + " minutes " ,1*(view_wport[0]/768),1*(view_wport[0]/768),0)
		}
	if(time_diffrence/86400 > 1 )
		{
		draw_text_transformed(view_wport[0]*0.5,x_1,string(floor(time_diffrence/86400)) + " Days " + string(round((time_diffrence-(floor(time_diffrence/86400)*86400))/3600)) + " hours " + string(round((time_diffrence-(floor(time_diffrence/3600)*3600))/60)) + " minutes " ,1*(view_wport[0]/768),1*(view_wport[0]/768),0)
		}
}

