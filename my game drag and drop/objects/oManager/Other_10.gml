/// @description Create UI
var _width = 300;
var _height = 100;
var _vx = 234
var _vy = 200

create_button(_vx, _vy, _width, _height, "account", on_click); // <- Do not include ()

create_button(_vx, _vy + _height + 40, _width, _height, "sound", on_click);

create_button(_vx, _vy + (_height + 40) * 2, _width, _height, "music", on_click);

create_button(_vx, _vy + (_height + 40) * 3, _width, _height, "leaderboard", on_click);

create_button(_vx, _vy + (_height + 40) * 4, _width, _height, "", on_click);

create_button(_vx, _vy + (_height + 40) * 5, _width, _height, "", on_click);

create_button(_vx, _vy + (_height + 40) * 6, _width, _height, "", on_click);