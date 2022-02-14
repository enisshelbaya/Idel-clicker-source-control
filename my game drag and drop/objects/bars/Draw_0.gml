/// @description Insert description here
// You can write your code in this editor

// bar for golden shower
percentage = (second/300)*100
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
draw_healthbar(view_wport[0]*0.001,view_hport[0]*0.17,view_wport[0]*0.94,view_hport[0]*0.176, percentage, c_black, c_yellow, c_yellow, 0, true, false)
draw_circle(view_wport[0]*0.97,view_hport[0]*0.173,18,false)

// 10x bar
percentage = (second/300)*100
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
draw_healthbar(view_wport[0]*0.06,view_hport[0]*0.83,view_wport[0]*0.94,view_hport[0]*0.836, percentage, c_black, c_yellow, c_yellow, 0, true, false)
draw_circle(view_wport[0]*0.97,view_hport[0]*0.173,18,false)
draw_set_font(timer)
draw_text_color(view_wport[0]*0.03,view_hport[0]*0.833,second,c_white,c_white,c_white,c_white,1)