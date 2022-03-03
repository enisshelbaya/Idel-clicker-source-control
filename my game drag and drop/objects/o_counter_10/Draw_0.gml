/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_default)
draw_set_valign(fa_top)
draw_set_halign(fa_right);
draw_set_color(c_white)
draw_text_transformed(view_wport[0]*0.95,click_power.y-(view_hport[0]*0.043), "Count:" + string(global.stats.click_power.click_power_level),1*(view_wport[0]/768),1*(view_wport[0]/768),0);
draw_set_valign(fa_bottom)
draw_text_transformed(view_wport[0]*0.95,click_power.y+(view_hport[0]*0.043), "Upgrade 2x",1*(view_wport[0]/768),1*(view_wport[0]/768),0)



draw_set_font(f_default)
draw_set_halign(fa_left);
draw_set_color(c_white)
draw_set_valign(fa_bottom)
if (global.stats.click_power.click_power_cost < 100000000) 
{
draw_text_transformed(view_wport[0] *0.30,click_power.y+(view_hport[0]*0.043), "Cost:" + string(global.stats.click_power.click_power_cost),1*(view_wport[0]/768),1*(view_wport[0]/768),0);
}
else 
{
	draw_text_transformed(view_wport[0] *0.30, click_power.y+(view_hport[0]*0.043) , "Cost:" + number_abbreviated,1*(view_wport[0]/768),1*(view_wport[0]/768),0)
}
draw_set_valign(fa_top)
draw_set_font(Font4)
draw_text_transformed(view_wport[0]*0.30,click_power.y-(view_hport[0]*0.043), "Click Power",1*(view_wport[0]/768),1*(view_wport[0]/768),0)

