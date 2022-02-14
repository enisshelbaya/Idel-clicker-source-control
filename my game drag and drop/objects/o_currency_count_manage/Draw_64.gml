/// @description Insert description here
// You can write your code in this editor
// draws currency amount
draw_set_alpha(0.2)
draw_set_color(c_black)
draw_rectangle(view_wport[0]*0,view_hport[0]*0,view_wport[0]*1,view_hport[0]*0.192,0)


draw_set_font(f_Arial_Size_48)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_set_color(c_white)
draw_set_alpha(1)
if (global.stats.random_vars.Currency_amount > 100000000 ) {
draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.08,  number_abbreviated+ " $" , 1, 1, 0);
}
else {
	draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.08,  string(global.stats.random_vars.Currency_amount)+ " $" , 1, 1, 0);
}

// draws manager strength 
draw_set_font(Font30)
if (global.stats.random_vars.manager_strength > 100000000 ) {
draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.12,  number_abbreviated1 + " $" , 1, 1, 0);
}
else {
	draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.12,  string(global.stats.random_vars.manager_strength)+ " $" , 1, 1, 0);
}
