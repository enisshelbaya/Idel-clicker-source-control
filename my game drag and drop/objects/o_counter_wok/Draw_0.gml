draw_set_font(f_default)
draw_set_valign(fa_top)
draw_set_halign(fa_right);
draw_set_color(c_white)
draw_text_transformed(view_wport[0]*0.95,o_manager_wok.y-(view_hport[0]*0.043), "Level:" + string(global.stats.counter_manager.wok),1*(view_wport[0]/768),1*(view_wport[0]/768),0);
draw_set_valign(fa_bottom)
draw_text_transformed(view_wport[0]*0.95,o_manager_wok.y+(view_hport[0]*0.043), " +47",1*(view_wport[0]/768),1*(view_wport[0]/768),0)



draw_set_font(f_default)
draw_set_halign(fa_left);
draw_set_color(c_white)
draw_set_valign(fa_bottom)
if (global.stats.cost_manager.wok < 1000000) 
{
draw_text_transformed(view_wport[0] *0.30,o_manager_wok.y+(view_hport[0]*0.043), "Cost:" + string(global.stats.cost_manager.wok),1*(view_wport[0]/768),1*(view_wport[0]/768),0);
}
else 
{
	draw_text_transformed(view_wport[0] *0.30,o_manager_wok.y+(view_hport[0]*0.043) , "Cost:" + number_abbreviated,1*(view_wport[0]/768),1*(view_wport[0]/768),0)
}
draw_set_valign(fa_top)
draw_set_font(Font4)
draw_text_transformed(view_wport[0]*0.30,o_manager_wok.y-(view_hport[0]*0.043), "Wok",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
