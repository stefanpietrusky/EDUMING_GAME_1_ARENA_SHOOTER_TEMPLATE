draw_sprite_ext(sPlayerShadow, 0, x, y, 1.0, 1.0, 0, c_white, image_alpha); 
draw_self();


if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED) && (obj_game_manager.curr_game_state != GAME_STATE.ENDED) {
	gpu_set_colorwriteenable(1,1,0,1);
	draw_sprite(sprite_index,0,x+movex1,y+movey1)
	gpu_set_colorwriteenable(1,1,1,1);

	gpu_set_colorwriteenable(1,1,0,1);
	draw_sprite(sprite_index,0,x+movex2,y+movey2)
	gpu_set_colorwriteenable(1,1,1,1);

	gpu_set_colorwriteenable(1,1,0,1);
	draw_sprite(sprite_index,0,x+movex3,y+movey3)
	gpu_set_colorwriteenable(1,1,1,1);
}