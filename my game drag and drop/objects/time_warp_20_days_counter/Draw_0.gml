

draw_set_font(f_default)
draw_set_halign(fa_left);
draw_set_color(c_white)
draw_set_valign(fa_top)
draw_text_transformed(view_wport[0]*0.30,time_warp_20_days.y-(view_hport[0]*0.07), "20 Day Time Warp",1.5*(view_wport[0]/768),1.5*(view_wport[0]/768),0);
draw_set_valign(fa_bottom)
draw_text_transformed(view_wport[0] *0.30,time_warp_20_days.y+(view_hport[0]*0.07), "Cost: 65 Diamonds",1.5*(view_wport[0]/768),1.5*(view_wport[0]/768),0);
draw_set_valign(fa_middle)
if ((global.stats.random_vars.manager_strength*1728000)<1000000)
{draw_text_transformed(view_wport[0]*0.30,time_warp_20_days.y, "You'll gain: " + string(floor(global.stats.random_vars.manager_strength*1728000)),1.5*(view_wport[0]/768),1.5*(view_wport[0]/768),0)}
else
{draw_text_transformed(view_wport[0]*0.30,time_warp_20_days.y, "You'll gain: " + string(number_abbreviated),1.5*(view_wport[0]/768),1.5*(view_wport[0]/768),0)}