/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (global.run = true)
{
draw_set_alpha(0.5)
draw_roundrect_color_ext(view_wport[0]*0.05,view_hport[0]*0.4,view_wport[0]*0.95,view_hport[0]*0.6,50,50,c_black,c_black,0)
draw_set_alpha(1)
draw_self()
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
draw_set_font(title_screen)
draw_text(view_wport[0]*0.5,view_hport[0]*0.45, "you were gone for: " + string(o_save.time_diffrence/60))
draw_text(view_wport[0]*0.5,view_hport[0]*0.55,  "and earned: " + string(o_save.Currency_increase))
}

else
{
instance_destroy()
}