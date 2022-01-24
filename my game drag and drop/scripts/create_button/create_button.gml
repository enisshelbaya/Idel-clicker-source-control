/// @arg x
/// @arg y
/// @arg width
/// @arg height
/// @arg text
/// @arg script
function create_button(_x,_y,_width,_height,_text,_script){    
	// Create button
	var _button = instance_create_layer(_x, _y, "Instances", oButton );

	// Set values
	with (_button) {
		width = _width;
		height = _height;
		text = _text;
		script = _script;
	}

	return _button;


}
