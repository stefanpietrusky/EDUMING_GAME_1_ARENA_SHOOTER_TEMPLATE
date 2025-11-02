var _max_pads = gamepad_get_device_count();

for (var _i = 0; _i < _max_pads; _i++)
{
	if (gamepad_is_connected(_i))
	{	
		if (gamepad_button_check_pressed(_i, gp_face1))
		{
			is_pressed = true;
			target_scale = 0.9;
			scale_rate = 0.9;
			
			sound_button = audio_play_sound(snd_menu_button, 100, false);
		}
	}
}

if (image_xscale != target_scale || image_yscale != target_scale)
{
	if (can_scale_at_rate)
	{
		image_xscale = lerp(image_xscale, target_scale, scale_rate);
		image_yscale = lerp(image_yscale, target_scale, scale_rate);
	}
	else
	{
		image_xscale = target_scale;
		image_yscale = target_scale;
	}
}

if (is_pressed)
{
	if (image_xscale == target_scale && image_yscale == target_scale)
	{
		if (image_xscale == 1 && image_yscale == 1)
		{
			if (!audio_exists(sound_button))
			{
				room_restart();
			}
		}
		else
		{
			target_scale = 1.0;	
		}
	}
}