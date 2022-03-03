/// @description Insert description here
// You can write your code in this editor
dis_h = display_get_height()
dis_w = display_get_width()
//dis_h =2340		 
//dis_w = 1080
view_set_hport(0,dis_h)
view_set_wport(0,dis_w)
surface_resize(application_surface,dis_w,dis_h)
view_set_visible(0,true)
camera_set_view_size(view_camera[0],dis_w,dis_h)
display_set_gui_size(dis_w,dis_h)
show_debug_message(view_hport[0])
show_debug_message(view_wport[0])
global.spacing = view_hport[0]*0.156
global.y_start = view_hport[0]*0.278
room_set_height(r_managers,global.y_start+(global.spacing*18))
show_debug_message(global.y_start+global.spacing*18)


