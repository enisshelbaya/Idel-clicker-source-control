/// @description Insert description here
// You can write your code in this editor

var _hover = get_hover_rectangle();
if(_hover)
{
draw_sprite_ext(s_store,1,x , y,0.025,0.025,0,c_white,1)

}
else
{
draw_sprite_ext(s_store,0,x, y,0.025,0.025,0,c_white,1)
}


