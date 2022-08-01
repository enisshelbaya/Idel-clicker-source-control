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
global.spacing = view_hport[0]*0.156;
global.y_start = view_hport[0]*0.39;
global.diamond_y_start = view_hport[0]*0.278;
room_set_height(r_managers,global.y_start+(global.spacing*32))
room_set_height(r_store,global.diamond_y_start+(global.spacing*7.5))
room_set_height(r_diamond_store,global.diamond_y_start+(global.spacing*10.5))
if (os_is_network_connected()) {run = false}
if (os_is_network_connected() = false) {run = true}


