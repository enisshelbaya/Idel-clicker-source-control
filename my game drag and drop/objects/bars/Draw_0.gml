/// @description Insert description here
// You can write your code in this editor

// bar for golden shower

percentage_1 = (global.stats.random_vars.bar_taps /800)*100
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (room = r_main)
{
draw_healthbar(view_wport[0]*0.001,view_hport[0]*0.17,view_wport[0]*0.94,view_hport[0]*0.176, percentage_1, c_grey, c_yellow, c_yellow, 0, true, false)

draw_sprite_ext(s_snow_flakes,50,view_wport[0]*0.97,view_hport[0]*0.173,0.5*(view_wport[0]/768),0.5*(view_wport[0]/768),0,c_white,1)
}
// 10x bar
if (room = r_main)
{
percentage_2 = (second/200)*100
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_healthbar(view_wport[0]*0.06,view_hport[0]*0.83,view_wport[0]*0.94,view_hport[0]*0.836, percentage_2, c_grey, c_yellow, c_yellow, 0, true, false)
draw_set_font(timer)
draw_text_transformed_color(view_wport[0]*0.03,view_hport[0]*0.833,second,1*(view_wport[0]/768),1*(view_wport[0]/768),0,c_white,c_white,c_white,c_white,1)
}

