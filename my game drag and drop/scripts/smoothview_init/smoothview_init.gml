/// @function smoothview_init(drag_horizontally, speed_modifier, smoothness, limit)
/// @param {boolean} drag_horizontally		Horizontal (1) or Vertical (0)
/// @param {real}	 speedmodifier		Speed of the view while swiping (default: 0.33)
/// @param {real}	 smoothness			Friction causes to slow down (default: 0.08)
/// @param {real}	 limit				Limit value used for clicking (default: 2)
///
/// @description	Initialises the smoothview
/// @date			2021-08-25
/// @copyright		Appsurd
function smoothview_init(argument0, argument1, argument2, argument3) {

	// Initialise variables
	drag_speed = 0;
	drag_horizontally = argument0;
	speed_modifier = argument1;
	smooth = argument2;
	limit = argument3;

	// Set drag direction
	if (drag_horizontally)
	    drag = mouse_x;
	else
	    drag = mouse_y;
}