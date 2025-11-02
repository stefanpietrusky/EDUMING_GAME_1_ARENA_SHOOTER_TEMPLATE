if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	draw_self();
	draw_sprite(sJoystickTap, 0, x + joy_x, y + joy_y);
}