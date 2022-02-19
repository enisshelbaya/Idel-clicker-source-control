/// @description Insert description here
// You can write your code in this editor
global.stats.random_vars.Currency_amount += o_manager_hud.Golden_amount
instance_create_layer(mouse_x, mouse_y-(view_hport[0]*0.05), "Effect", o_golden_cookie_effect);
instance_destroy()