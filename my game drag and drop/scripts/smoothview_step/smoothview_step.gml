/// @function smoothview_step()
///
/// @description	Handles the movement of the view
/// @date			2021-08-25
/// @copyright		Appsurd
function smoothview_step() {

	// Initialise the movement by pressing using the left mouse button
	if (mouse_check_button_pressed(mb_left))
	{
	    drag_speed = 0;
	    if (drag_horizontally)
	        drag = mouse_x;
	    else
	        drag = mouse_y;
	}

	// Scrolling horizontally
	if (drag_horizontally)
	{
	    //Drag
		if (mouse_check_button(mb_left))
	    {
	        drag_speed = (drag - mouse_x) * speed_modifier;
			camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + drag_speed, 0);
	    }
		
		//Drag slow down effect
	    if (abs(drag_speed) > 0)
	    {
			camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + drag_speed, 0);
			if (camera_get_view_x(view_camera[0]) <= 0 || camera_get_view_x(view_camera[0]) >= (room_width-camera_get_view_width(view_camera[0]))) then drag_speed = 0;
	        drag_speed += (-drag_speed*smooth);
	    }

	    // Keep the screen within the room
	    camera_set_view_pos(view_camera[0], round(max(0, min(camera_get_view_x(view_camera[0]), room_width - camera_get_view_width(view_camera[0])))), 0);
	}
	else
	{
		// Dragging
	    if (mouse_check_button(mb_left))
	    {
	        drag_speed = (drag - mouse_y) * speed_modifier;
	        camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) + drag_speed);
	    }
		
		// Drag slow down effect
	    if (abs(drag_speed) > 0)
	    {
	        camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) + drag_speed);
			if (camera_get_view_y(view_camera[0]) <= 0 || camera_get_view_y(view_camera[0]) >= (room_height-camera_get_view_height(view_camera[0]))) then drag_speed = 0;
			drag_speed += (-drag_speed*smooth);
	    }
		
	    // Keep the screen within the room
	    camera_set_view_pos(view_camera[0], 0, round(max(0, min(camera_get_view_y(view_camera[0]), room_height - camera_get_view_height(view_camera[0])))));
	}
}