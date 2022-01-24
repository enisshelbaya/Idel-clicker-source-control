/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_default)
draw_set_halign(fa_middle);
draw_set_color(c_white)
// for some reason the orgin of the font is at the top which means it extendeds 40 down. 
// 40 is the size of the font. you have to deduce.
draw_text(room_width / 2, o_click_power_1000.y-180, "Count:" + string(global.stats.counter_click_power.counter_click_power_1000));

if (global.stats.cost_click.cost_click_power_1000 < 999999) 
{
draw_text(room_width / 2, o_click_power_1000.y+100, "Cost:" + string(global.stats.cost_click.cost_click_power_1000));
}
else 
{
	draw_text(room_width / 2, o_click_power_1000.y+100, "Cost:" + number_abbreviated)
}
// draws line after the cost 
draw_line_width_color(0,o_click_power_1000.y+195, 768 , o_click_power_1000.y+195,30,c_white,c_white)