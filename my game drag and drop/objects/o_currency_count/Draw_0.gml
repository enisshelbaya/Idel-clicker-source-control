/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_Arial_Size_48)
draw_set_halign(fa_middle);
draw_set_color(c_orange)
draw_text_transformed(room_width / 2, 60, "$" + string(global.stats.random_vars.Currency_amount), 1, 1, 0);