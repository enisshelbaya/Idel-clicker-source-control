/// @description Insert description here
// You can write your code in this editor
show_debug_message(tps)
var _hover = get_hover_circule();
var _click = _hover && mouse_check_button_released(mb_left);

// Hover
hover = lerp(hover, _hover, 0.1);
y = lerp(y, ystart - _hover * 8, 0.1);

// Click
if (_click ) {

instance_create_depth(irandom(x),irandom(y),depth,o_snowflake)
image_index=1
alarm[0]= room_speed*0.08
global.stats.random_vars.Currency_amount += global.stats.random_vars.Clicker_Power;
amount_gained += global.stats.random_vars.Clicker_Power;
global.stats.random_vars.taps += 1;
tps += 1;
instance_create_layer(mouse_x, mouse_y, "Effect", o_click_count_effect);


}


// abbreviates click power
if (global.stats.random_vars.Clicker_Power > 0)   // makers sure that this code will not run when the variable is equal to 0
{
		num_process = global.stats.random_vars.Clicker_Power;
		number_array=[]
		while (num_process >= 1)
		{
		    num_process = num_process / 1000;
		    array_push(number_array,floor(frac(num_process) * 1000));
		}
		number_abbreviated = Number_Abbreviate(number_array)
}