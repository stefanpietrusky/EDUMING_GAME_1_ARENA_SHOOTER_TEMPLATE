if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	x = camera_get_view_x(view_camera[0]) + 1920 * 0.780;
	y = camera_get_view_y(view_camera[0]) + 1080 * 0.625;
	
	draw_self();
}