var _max_devices = 4;

for (var _i = 0; _i < _max_devices; _i++)
{
	var _touch_x = device_mouse_x_to_gui(_i);
    var _touch_y = device_mouse_y_to_gui(_i);
    
    var _joystick = instance_position(_touch_x, _touch_y, obj_joystick);
	
    var _held = device_mouse_check_button(_i, mb_left);
    
    if (_joystick != noone && _held)
    {
		_joystick.input(_i);
    }
}