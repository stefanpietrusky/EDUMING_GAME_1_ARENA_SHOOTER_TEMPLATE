if (!is_pressed)
{
	target_scale = 0.95;
}

if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	if (!obj_player.player_is_reloading)
	{
		obj_player.player_is_reloading = true;
		
		if(!audio_is_playing(obj_player.reloading_sound))
		{
			obj_player.reloading_sound = audio_play_sound(snd_gun_reload, 100, true, 0.4, 0, 1.0);
		}
	}
	
	is_pressed = true;
	target_scale = 0.9;
	scale_rate = 0.9;
}