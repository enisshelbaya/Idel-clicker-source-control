/// @description Insert description here
// You can write your code in this editor

var _hover = get_hover_rectangle();
if(_hover)
{
draw_sprite_ext(s_menu,1,x + width, y + height,0.2,0.2,0,c_white,1)

}
else
{
draw_sprite_ext(s_menu,0,x + width, y + height,0.2,0.2,0,c_white,1)
}


