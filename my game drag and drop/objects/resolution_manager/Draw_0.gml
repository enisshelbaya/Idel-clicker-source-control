/// @description Insert description here
// You can write your code in this editor

if (run = true)
{
draw_set_alpha(0.8)
	draw_roundrect_color_ext(view_wport[0]*0.05,view_hport[0]*0.39,view_wport[0]*0.95,view_hport[0]*0.62,50,50,c_black,c_black,0)
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(Welcome)
	draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.5, "No Internet Connection",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
}
