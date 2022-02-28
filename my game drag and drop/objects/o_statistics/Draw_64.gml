/// @description Insert description here
// You can write your code in this editor


/// draws the big box	
draw_set_alpha(0.8)
draw_set_color(c_white)
draw_roundrect_ext(view_wport[0]*0.2,view_hport[0]*0.2,view_wport[0]*0.8,view_hport[0]*0.8,rad1,rad1,0)
///draws the smaller individual boxes 
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_roundrect_ext(view_wport[0]*0.23,y_1,view_wport[0]*0.77,y_2,rad2,rad2,0)
draw_roundrect_ext(view_wport[0]*0.23,y_1+spacing,view_wport[0]*0.77,y_2+spacing,rad2,rad2,0)
draw_roundrect_ext(view_wport[0]*0.23,y_1+spacing*2,view_wport[0]*0.77,y_2+spacing*2,rad2,rad2,0)
draw_roundrect_ext(view_wport[0]*0.23,y_1+spacing*3,view_wport[0]*0.77,y_2+spacing*3,rad2,rad2,0)
draw_roundrect_ext(view_wport[0]*0.23,y_1+spacing*4,view_wport[0]*0.77,y_2+spacing*4,rad2,rad2,0)
draw_roundrect_ext(view_wport[0]*0.23,y_1+spacing*5,view_wport[0]*0.77,y_2+spacing*5,rad2,rad2,0)
/// draws the individual stats
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_font(stats)
draw_text(x_1,y_3,"Total Production:" + string(round(global.stats.random_vars.Total_lifetime_cookies)))
if (global.stats.random_vars.Total_lifetime_cookies > 10000000000000){draw_text(x_1,y_3,"Total Production:" + number_abbreviated )}
draw_text(x_1,y_3+spacing,"Tap Production:" + string(global.stats.random_vars.tap_production))
if (global.stats.random_vars.tap_production > 10000000000000){draw_text(x_1,y_3,"Tap Production:" + number_abbreviated )}
draw_text(x_1,y_3+spacing*2,"Taps:" + string(global.stats.random_vars.taps))
draw_text(x_1,y_3+spacing*3,"Coffees Consumed:" + string(global.stats.random_vars.golden_boys_clicked))
draw_text(x_1,y_3+spacing*4,"Total Upgrades:" + string(global.stats.random_vars.total_upgrades))
draw_text(x_1,y_3+spacing*5,"Ads Watched:" + string(global.stats.random_vars.ads_watched))
/// draws the title
draw_set_halign(fa_center)
draw_set_color(c_blue)
draw_set_font(stat_title)
draw_text(view_wport[0]*0.5,view_hport[0]*0.26,"Statistics")

