/// @description Insert description here
// You can write your code in this editor
// draws currency amount
draw_line_width_color(0,1,768,1,200,c_white,c_white)

//
draw_set_font(f_Arial_Size_48)
draw_set_halign(fa_middle);
draw_set_color(c_orange)

if (global.stats.random_vars.Currency_amount > 999999 ) {
draw_text_transformed(room_width / 4, 20, "$" + number_abbreviated , 1, 1, 0);
}
else {
	draw_text_transformed(room_width / 4, 20, "$" + string(global.stats.random_vars.Currency_amount) , 1, 1, 0);
}



// draws manager strength 
draw_set_font(f_Arial_Size_48)
draw_set_halign(fa_middle);
draw_set_color(c_orange)
if (global.stats.random_vars.manager_strength > 999999 ) {
draw_text_transformed(room_width *  (4/5), 20, number_abbreviated_2 + " $/s" , 1, 1, 0);
}
else {
	draw_text_transformed(room_width * (3.75/ 5), 20 , string(global.stats.random_vars.manager_strength) + " $/s" , 1, 1, 0);
}

draw_set_font(f_Arial_Size_48)
draw_set_halign(fa_middle);
draw_set_color(c_orange)
if (global.stats.random_vars.taps > 999999 ) {
draw_text_transformed(room_width / 5 , 100, number_abbreviated_3 + " Clicks" , 1, 1, 0);
}
else {
	draw_text_transformed(room_width / 5 , 100 , string(global.stats.random_vars.taps) + " Clicks" , 1, 1, 0);
}
