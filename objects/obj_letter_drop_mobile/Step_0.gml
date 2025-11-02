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
			is_pressed = false;
			scale_rate = 0.1;
		}
		else
		{
			target_scale = 1.0;	
		}
	}
}

if (instance_exists(obj_player))
{
	if (obj_player.letters)
	{
		blend_time += delta_time * 0.000001;
		
		var _blend_rate = 0.25;
		var _blend_colour_1 = make_color_rgb(96, 128, 243);
		var _blend_colour_2 = make_color_rgb(194, 229, 243);
		
		if (blend_target == c_white)
		{
			blend_target = _blend_colour_1;
		}
		
		if (blend_target == _blend_colour_1 && blend_time >= _blend_rate)
		{
			blend_time = 0;
			blend_target = _blend_colour_2;
		}
		else if (blend_target == _blend_colour_2 && blend_time >= _blend_rate)
		{
			blend_time = 0;
			blend_target = _blend_colour_1;
		}
	}
	else
	{
		blend_time = 0;
		blend_target = c_white;
	}
	image_blend = merge_color(image_blend, blend_target, 0.05);
}