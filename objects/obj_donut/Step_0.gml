if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED) && (obj_game_manager.curr_game_state != GAME_STATE.ENDED) {
	if (donut == true) 
	{
		sprite_index = sDonut;
		y = (ystart + speed) + sin(get_timer()/300000)*15;
	}
	else if (donut == false)
	{
		sprite_index = noone;
		sounddonut = -1;
	}
}