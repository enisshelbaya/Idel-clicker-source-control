/// @description Insert description here
// You can write your code in this editor
if (room = r_main)
{
global.stats.random_vars.Currency_amount += o_manager_hud.Golden_amount
global.stats.random_vars.Total_lifetime_cookies += o_manager_hud.Golden_amount
instance_create_layer(mouse_x, mouse_y-(view_hport[0]*0.05), "Effect", o_golden_cookie_effect);
audio_play_sound(Coffee_slurping,11,false)
global.stats.random_vars.golden_boys_clicked += 1;
instance_destroy()

}