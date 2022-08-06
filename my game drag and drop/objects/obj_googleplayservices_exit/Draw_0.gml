 x = view_wport[0]*0.5
 y = view_hport[0]*0.8
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_font(f_default)
draw_set_color(c_white)
draw_self()
draw_text_transformed(x,y,text,1*(view_wport[0]/768),1*(view_wport[0]/768),0)