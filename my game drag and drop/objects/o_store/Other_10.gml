/// @description CreateUI
var _width = view_wport*0.3906 ;
var _height= view_hport[0]*0.073;
var _vx = view_wport[0]*0.3;
var _vy = view_hport[0]*0.35;

create_button(_vx, _vy, _width, _height, "account", on_click); // <- Do not include ()

create_button(_vx, _vy + _height + view_hport[0]*0.052, _width, _height, "settings", on_click);

create_button(_vx, _vy + (_height + view_hport[0]*0.052) * 2, _width, _height,"credit" , on_click);
