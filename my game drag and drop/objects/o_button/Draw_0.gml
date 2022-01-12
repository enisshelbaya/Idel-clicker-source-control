/// @description Insert description here
// You can write your code in this editor
var _hover = get_hover_circule();
if(_hover)
{
draw_sprite_ext(s_button,1,x + width, y + height,1,1,0,c_white,1)
}
else
{
draw_sprite_ext(s_button,0,x + width, y + height,1,1,0,c_white,1)
}

