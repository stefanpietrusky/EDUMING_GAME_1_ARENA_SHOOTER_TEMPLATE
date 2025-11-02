if(curr_game_state == GAME_STATE.PLAYING)
{	
	with (obj_player)
	{
		draw_sprite(sBehindgroundHUD, 0, 0, 0);

		if (player_health >= 1)
		{
			draw_sprite_ext(sHudHealth, 0, 86, 40, 1.0, 1.0, 0, c_white, 1.0);
			if (player_health >= 2)
			{
				draw_sprite_ext(sHudHealth, 0, 237, 40, 1.0, 1.0, 0, c_white, 1.0);
				if (player_health >= 3)
				{
					draw_sprite_ext(sHudHealthEnd, 0, 385, 40, 1.0, 1.0, 0, c_white, 1.0);
				}
				else
				{
					draw_sprite_ext(sHudHealthEnd, 0, 385, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);
				}
			}
			else
			{
				draw_sprite_ext(sHudHealth, 0, 237, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);
			}
		}
		else
		{
			draw_sprite_ext(sHudHealth, 0, 86, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);
		}

		for (var _i = 0; _i < player_curr_ammo; _i++)
		{
			if (_i == 0)
			{
				draw_sprite(sHudAmmoStart, 0, 58, 85);
			}
			else
			{
				draw_sprite(sHudAmmo, 0, 53 + (_i) * 11, 85);
			}
		}	

		draw_sprite(sBackgroundHUD, 0, 0, 0);
		draw_set_font(obj_game_manager.score_font);
		draw_set_color(obj_game_manager.score_colour);
		draw_set_alpha(obj_game_manager.score_alpha);
		draw_set_halign(obj_game_manager.score_halign);
		draw_set_valign(obj_game_manager.score_valign);
		draw_text(room_width / 2, 64, string(player_score));
		draw_set_color(c_white);
		draw_set_alpha(1.0);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}

	window_set_cursor(cr_none);
	draw_set_alpha(0.5);

	var cam = view_camera[0];
	var view_x = camera_get_view_x(cam);
	var view_y = camera_get_view_y(cam);
	var view_w = camera_get_view_width(cam);
	var view_h = camera_get_view_height(cam);

	var deadzone = 0.2;
	var look_x = gamepad_axis_value(obj_player.player_local_id, gp_axisrv);
	var look_y = -gamepad_axis_value(obj_player.player_local_id, gp_axisrh);
	var stick_strength = point_distance(0, 0, look_x, look_y);

	if (stick_strength < deadzone) {
		look_x = 0;
		look_y = 0;
		stick_strength = 0;
	}

	if (stick_strength > deadzone) {
		obj_player.is_mouse_aiming = false;
	} else if (!mouse_check_button(mb_any)) {
		obj_player.is_mouse_aiming = true;
	}

	if (obj_player.is_mouse_aiming) {
		var cx = mouse_x - view_x;
		var cy = mouse_y - view_y;
		draw_sprite(sCrosshair, 0, cx, cy);
	} else {
		var offset = 400 * clamp(stick_strength, 0.5, 1);
		var angle_rad = degtorad(obj_player.gun_angle);
		var cx_world = obj_player.x + offset * cos(angle_rad);
		var cy_world = obj_player.y - offset * sin(angle_rad);

		var cx_screen = cx_world - view_x;
		var cy_screen = cy_world - view_y;

		var buffer = 60;
		cx_screen = clamp(cx_screen, buffer, view_w - buffer);
		cy_screen = clamp(cy_screen, buffer, view_h - buffer);

		draw_sprite(sCrosshair, 0, cx_screen, cy_screen);
	}

	draw_set_alpha(1.0);
}
else
{
	window_set_cursor(cr_default);
}

