/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

	
	if ((global.stats.random_vars.manager_strength*1500) > 1000000)
{
num_process = global.stats.random_vars.manager_strength*1500;
number_array=[]
while (num_process >= 1){
    num_process = num_process / 1000;
    array_push(number_array,floor(frac(num_process) * 1000));
}
number_abbreviated = Number_Abbreviate(number_array)
}
	draw_set_alpha(0.8)
	draw_roundrect_color_ext(view_wport[0]*0.05,view_hport[0]*0.39,view_wport[0]*0.95,view_hport[0]*0.62,50,50,c_black,c_black,0)
	draw_set_alpha(1)
	draw_sprite(s_close,0,x,y)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(Welcome)
	draw_text_transformed(view_wport[0]*0.5,view_hport[0]*0.45, "Welcome Back!",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
	draw_set_font(title_screen)
	
	
	draw_text_transformed(view_wport[0]*0.5,x_1, "Thank you for watching this ad.",1*(view_wport[0]/768),1*(view_wport[0]/768),0)
if ((global.stats.random_vars.manager_strength*1500)<1000000)
{draw_text_transformed(view_wport[0]*0.5,x_2,"Enjoy your reward "+ string(floor(global.stats.random_vars.manager_strength*1500))+" Eggs",1*(view_wport[0]/768),1*(view_wport[0]/768),0)}
else
{draw_text_transformed(view_wport[0]*0.5,x_2, "Enjoy your reward " + string(number_abbreviated)+" Eggs",0.8*(view_wport[0]/768),0.8*(view_wport[0]/768),0)}
			
