

draw_set_font(f_default)
draw_set_valign(fa_top)
draw_set_halign(fa_right);
draw_set_color(c_white)
draw_text(room_width*0.95,o_manager_processor.y-60, "Level:" + string(global.stats.counter_manager.food_processor));
draw_set_valign(fa_bottom)
draw_text(room_width*0.95,o_manager_processor.y+60, " +150000000000")



draw_set_font(f_default)
draw_set_halign(fa_left);
draw_set_color(c_white)
draw_set_valign(fa_bottom)
if (global.stats.cost_manager.food_processor < 100000000) 
{
draw_text(room_width *0.30,o_manager_processor.y+60, "Cost:" + string(global.stats.cost_manager.food_processor));
}
else 
{
	draw_text(room_width *0.30,o_manager_processor.y+60 , "Cost:" + number_abbreviated)
}
draw_set_valign(fa_top)
draw_set_font(Font4)
draw_text(room_width*0.30,o_manager_processor.y-60, "Food Processor")


