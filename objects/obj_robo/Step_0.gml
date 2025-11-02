if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED) && (obj_game_manager.curr_game_state != GAME_STATE.ENDED) {
	x = (xstart + speed) + sin(get_timer()/300000)*15;
	image_speed = 1;
	if (!obj_missing_letter.letterscore) {
		sprite_index = sBuddy;
	}
	else if (obj_missing_letter.letterscore) {
		sprite_index = sBuddyLove;
		y = (ystart + speed) + sin(get_timer()/300000)*15;
	}
}
else {
	image_speed = 0;
}