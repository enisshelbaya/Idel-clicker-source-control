/// @function smoothview_can_press(drag_speed, limit)
/// @param {real}	drag_speed	The drag speed of the controller object
/// @param {real}	limit		Limit value of pressing
///
/// @description	Checks whether you may click on a moving button
///		            Used to prevent clicking while dragging
/// @date			2021-08-25
/// @copyright		Appsurd
function smoothview_can_press(drag_speed, limit) {

	return (abs(drag_speed) <= limit);
}