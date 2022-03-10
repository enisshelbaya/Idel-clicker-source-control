/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_middle);
draw_set_color(c_white)
draw_set_valign(fa_top)
draw_set_font(Font4)
draw_text_transformed(view_wport[0]*0.635,o_ad_reward.y-(view_hport[0]*0.02), "View this ad and recieve",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
if ((global.stats.random_vars.manager_strength*1500)<1000000)
{draw_text_transformed(view_wport[0]*0.635,o_ad_reward.y+(view_hport[0]*0.01), string(floor(global.stats.random_vars.manager_strength*1500)),1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
else
{draw_text_transformed(view_wport[0]*0.635,o_ad_reward.y+(view_hport[0]*0.01), string(number_abbreviated),0.8*(view_wport[0]/768),0.8*(view_wport[0]/768),0)}
