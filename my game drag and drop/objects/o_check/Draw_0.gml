/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_font(stats)
draw_set_valign(fa_top)
draw_text_transformed(global.x_1,global.y_1+global.spaces*4,"All the information above will only be\nused in contacting you if you win. If you\nare not intrested in giving out your\ninformation just fill in random stuff.\nPlease click on the circule below to\nconfirm that you understand this\nstatments and then click the start button to continue",global.fosi*(view_wport[0]/768),global.fosi*(view_wport[0]/768),0)