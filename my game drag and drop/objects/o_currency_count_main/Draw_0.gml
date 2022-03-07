/// @description Insert description here
// You can write your code in this editor
// draws currency amount


draw_set_font(f_Arial_Size_48)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_set_color(c_white)

if (global.stats.random_vars.Currency_amount > 1000000 ) {
draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.08,  number_abbreviated+ " Eggs" ,1*(view_wport[0]/768),1*(view_wport[0]/768),0);
}
else {
	draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.08,  string(floor(global.stats.random_vars.Currency_amount))+ " Eggs" , 1*(view_wport[0]/768),1*(view_wport[0]/768),0);
}

// draws manager strength 
draw_set_font(Font30)
if (global.stats.random_vars.manager_strength > 1000000 ) {
draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.12,  number_abbreviated1 + " per second" ,1*(view_wport[0]/768),1*(view_wport[0]/768),0);
}
else {
	draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.12,  string(global.stats.random_vars.manager_strength)+ " per second" , 1*(view_wport[0]/768),1*(view_wport[0]/768),0);
}
