/// @description Insert description here
// You can write your code in this editor
//dis_h = display_get_height()
////dis_w = display_get_width()
dis_h = 926
dis_w = 428
view_set_hport(0,dis_h)
view_set_wport(0,dis_w)
view_set_visible(0,true)
camera_set_view_size(view_camera[0],dis_w,dis_h)
show_debug_message(view_hport[0])
show_debug_message(view_wport[0])


