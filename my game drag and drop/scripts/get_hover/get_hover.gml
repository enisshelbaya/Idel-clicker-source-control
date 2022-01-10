
// for rectangles
// for rectangles you need to include width and height in the create tab, no need for rad
function get_hover_rectangle() {
	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);
	return point_in_rectangle(_mouseX, _mouseY, x, y, x + width, y + height);

}

// for circules
// you need to include rad in the create tab
function get_hover_circule() {
	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);
	return point_in_circle(_mouseX, _mouseY, x + width, y, rad);

}
