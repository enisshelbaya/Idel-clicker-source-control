/// @description Insert description here
// You can write your code in this editor
if (draw = true)
{
	draw_set_alpha(0.85)
	draw_rectangle_color(view_wport[0]*0.86,view_hport[0]*0.20,view_wport[0]*1,view_hport[0]*0.24,c_black,c_black,c_black,c_black,0)
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	draw_set_font(Welcome)
	draw_text_transformed(view_wport[0]*0.93,view_hport[0]*0.22, "Ad " + string(count),0.5*(view_wport[0]/768),0.5*(view_wport[0]/768),0)
}
	

		