if (!is_pressed)
{
	target_scale = 0.95;
}

if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	if (obj_player.letters) && (obj_player.A) 
	{
	obj_player.deliverA = false;
	obj_player.letters = false;
	obj_player.A = false;
	}

	if (obj_player.letters) && (obj_player.B) 
	{
	obj_player.deliverB = false;
	obj_player.letters = false;
	obj_player.B = false;
	}

	if (obj_player.letters) && (obj_player.C) 
	{
	obj_player.deliverC = false;
	obj_player.letters = false;
	obj_player.C = false;
	}	
	
	if (obj_player.letters) && (obj_player.D) 
	{
	obj_player.deliverD = false;
	obj_player.letters = false;
	obj_player.D = false;
	}	

	if (obj_player.letters) && (obj_player.E) 
	{
	obj_player.deliverE = false;
	obj_player.letters = false;
	obj_player.E = false;
	}	

	is_pressed = true;
	target_scale = 0.9;
	scale_rate = 0.9;
}