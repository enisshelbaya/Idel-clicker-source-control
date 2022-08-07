/// @description Insert description here
// You can write your code in this editor
draw_line_width(view_wport[0]*0,y-view_hport[0]*0.081,view_wport[0]*1,y-view_hport[0]*0.081,view_hport[0]*0.01)
draw_line_width(view_wport[0]*0,y+view_hport[0]*0.075,view_wport[0]*1,y+view_hport[0]*0.075,view_hport[0]*0.01)
draw_line_width(view_wport[0]*0.01,y-view_hport[0]*0.076,view_wport[0]*0.01,y+view_hport[0]*0.076,view_hport[0]*0.01)
draw_line_width(view_wport[0]*0.99,y-view_hport[0]*0.076,view_wport[0]*0.99,y+view_hport[0]*0.076,view_hport[0]*0.01)
draw_self()


draw_set_font(f_default)
draw_set_halign(fa_left);
draw_set_color(c_white)
draw_set_valign(fa_bottom)
draw_text_transformed(view_wport[0] *0.230,y+(view_hport[0]*0.05), "Cost: 149.97" ,2*(view_wport[0]/768),2*(view_wport[0]/768),0);
draw_set_valign(fa_top)
draw_set_font(Font4)
draw_text_transformed(view_wport[0]*0.230,y-(view_hport[0]*0.05), "10000 Diamonds",1.5*(view_wport[0]/768),1.5*(view_wport[0]/768),0)


