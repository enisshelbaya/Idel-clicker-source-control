/// @description Insert description here
// You can write your code in this editor
var _hover = get_hover_circule();
if(_hover)
{
draw_sprite_ext(s_button,1,x + width, y + height,0.4,0.4,0,c_white,1)
}
else
{
draw_sprite_ext(s_button,0,x + width, y + height,0.4,0.4,0,c_white,1)
}


if (global.stats.random_vars.Clicker_Power > 1000) // will only abbreviate the number if it is over 1000
{
		draw_set_font(f_default)
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(x + width/2, y + height/2, number_abbreviated); // the click power is abberviated 
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
}

else 
{
		draw_set_font(f_default)
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(x + width/2, y + height/2, string(global.stats.random_vars.Clicker_Power) + " CP" ); // the click power is not abberviated
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		

}