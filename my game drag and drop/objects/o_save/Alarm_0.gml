/// @description Insert description here
// You can write your code in this editorz
var _string = json_stringify(global.stats);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, +1)
buffer_write(_buffer, buffer_string, _string)
buffer_save (_buffer, "savedgame.save");
buffer_delete(_buffer);


// record the time since 
unix_start_point = date_create_datetime(1970,1,1,0,0,0)
global.stats.random_vars.time = date_second_span(unix_start_point,date_current_datetime());
//
counter += 1;
alarm[0] = room_speed*1;