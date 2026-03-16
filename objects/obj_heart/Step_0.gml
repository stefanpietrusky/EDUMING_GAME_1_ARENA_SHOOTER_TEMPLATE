if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED) && (obj_game_manager.curr_game_state != GAME_STATE.ENDED) {
	if (heart == true) 
	{
		sprite_index = sHeart;
		y = (ystart + speed) + sin(get_timer()/300000)*15;
	}
	else if (heart == false)
	{
		sprite_index = noone;
		soundheart = -1;
	}
}