var _hover = get_hover();
if(_hover)
{
draw_sprite_ext(s_button_left,1,x + width, y + height,0.5,0.5,0,c_white,1)
}
else
{
draw_sprite_ext(s_button_left,0,x + width, y + height,0.5,0.5,0,c_white,1)
}

