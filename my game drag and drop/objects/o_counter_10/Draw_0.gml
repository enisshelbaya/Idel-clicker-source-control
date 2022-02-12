/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_default)
draw_set_valign(fa_top)
draw_set_halign(fa_right);
draw_set_color(c_white)
draw_text(room_width*0.95,click_power.y-60, "Count:" + string(global.stats.click_power.click_power_level));
draw_set_valign(fa_bottom)
draw_text(room_width*0.95,click_power.y+60, "Upgrade 2x")



draw_set_font(f_default)
draw_set_halign(fa_left);
draw_set_color(c_white)
draw_set_valign(fa_bottom)
if (global.stats.click_power.click_power_cost < 100000000) 
{
draw_text(room_width *0.30,click_power.y+60, "Cost:" + string(global.stats.click_power.click_power_cost));
}
else 
{
	draw_text(room_width *0.30, click_power.y+60 , "Cost:" + number_abbreviated)
}
draw_set_valign(fa_top)
draw_set_font(Font4)
draw_text(room_width*0.30,click_power.y-60, "Click Power")

