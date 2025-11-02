if (instance_exists(obj_player))
{	
	if (obj_player.player_curr_ammo <= obj_player.player_max_ammo * 0.2)
	{		
		alpha_time += delta_time * 0.000001;
		
		var _alpha_rate = 0.2;
		
		if (alpha_target >= 0.99 && alpha_time >= _alpha_rate)
		{
			alpha_time = 0;
			alpha_target = 0;
		}
		else if (alpha_target <= 0.01 && alpha_time >= _alpha_rate)
		{
			alpha_time = 0;
			alpha_target = 1;
		}
	}
	else
	{
		alpha_time = 0;
		alpha_target = -0.1;
	}
	
	image_alpha = lerp(image_alpha, alpha_target, 0.1);
}
else
{
	instance_destroy();	
}