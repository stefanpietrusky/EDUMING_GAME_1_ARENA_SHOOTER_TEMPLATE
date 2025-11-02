if (global.is_touch) {
	x = camera_get_view_x(view_camera[0]) + 1550;
	y = camera_get_view_y(view_camera[0]) + 150;
}
else {
	x = camera_get_view_x(view_camera[0]) + 1570;
	y = camera_get_view_y(view_camera[0]) + 140;
}

if (instance_exists(obj_player)) && (!letterscore) {
	if (sprite_index == sApfel)	{
		if (obj_player.deliverA) {
			obj_player.deliverA = false;
			obj_donut.donut = true;
			obj_player.player_score += 500;
			obj_robo.chipscore += 1;
			soundright = audio_play_sound(snd_right_letter,100,false);
			sprite_index = noone; alarm[0] = 90;
			letterscore = true;
		}
		else if (obj_player.deliverB) || (obj_player.deliverC) || (obj_player.deliverD) || (obj_player.deliverE) {
			obj_player.player_score -= 500;
			obj_player.deliverB = false; obj_player.deliverC = false; obj_player.deliverD = false; obj_player.deliverE = false;
			sprite_index = noone; alarm[0] = 90;
			soundwrong = audio_play_sound(snd_wrong_letter,100,false);
		}
	}
	if (sprite_index == sBall) {
		if (obj_player.deliverB) {
			obj_player.deliverB = false;
			obj_donut.donut = true;
			obj_player.player_score += 500;
			obj_robo.chipscore += 1;
			soundright = audio_play_sound(snd_right_letter,100,false);
			sprite_index = noone; alarm[0] = 90;
			letterscore = true;
		}
		else if (obj_player.deliverA) || (obj_player.deliverC) || (obj_player.deliverD) || (obj_player.deliverE) {
			obj_player.player_score -= 500;
			obj_player.deliverB = false; obj_player.deliverC = false;  obj_player.deliverD = false;  obj_player.deliverE = false;
			sprite_index = noone; alarm[0] = 90;
			soundwrong = audio_play_sound(snd_wrong_letter,100,false);
		}
	}
	if (sprite_index == sClown) {
		if (obj_player.deliverC) {
			obj_player.deliverC = false;
			obj_donut.donut = true;
			obj_player.player_score += 500;
			obj_robo.chipscore += 1;
			soundright = audio_play_sound(snd_right_letter,100,false);
			sprite_index = noone; alarm[0] = 90;
			letterscore = true;
		}
		else if (obj_player.deliverA) || (obj_player.deliverB) || (obj_player.deliverD) || (obj_player.deliverE) {
			obj_player.player_score -= 500;
			obj_player.deliverA = false; obj_player.deliverB = false; obj_player.deliverD = false; obj_player.deliverE = false;
			sprite_index = noone; alarm[0] = 90;
			soundwrong = audio_play_sound(snd_wrong_letter,100,false);
		}
	}
	if (sprite_index == sBurger) {
		if (obj_player.deliverB) {
			obj_player.deliverB = false;
			obj_donut.donut = true;
			obj_player.player_score += 500;
			obj_robo.chipscore += 1;
			soundright = audio_play_sound(snd_right_letter,100,false);
			sprite_index = noone; alarm[0] = 90;
			letterscore = true;
		}
		else if (obj_player.deliverA) || (obj_player.deliverC) || (obj_player.deliverD) || (obj_player.deliverE) {
			obj_player.player_score -= 500;
			obj_player.deliverA = false; obj_player.deliverC = false; obj_player.deliverD = false; obj_player.deliverE = false;
			sprite_index = noone; alarm[0] = 90;
			soundwrong = audio_play_sound(snd_wrong_letter,100,false);
		}
	}
	if (sprite_index == sHerz) {
		if (obj_player.deliverE) {
			obj_player.deliverE = false;
			obj_donut.donut = true;
			obj_player.player_score += 500;
			obj_robo.chipscore += 1;
			soundright = audio_play_sound(snd_right_letter,100,false);
			sprite_index = noone; alarm[0] = 90;
			letterscore = true;
		}
		else if (obj_player.deliverA) || (obj_player.deliverB) || (obj_player.deliverC) || (obj_player.deliverD) {
			obj_player.player_score -= 500;
			obj_player.deliverA = false; obj_player.deliverB = false; obj_player.deliverC = false; obj_player.deliverD = false;
			sprite_index = noone; alarm[0] = 90;
			soundwrong = audio_play_sound(snd_wrong_letter,100,false);
		}
	}
	if (sprite_index == sFrosch) {
		if (obj_player.deliverC) {
			obj_player.deliverC = false;
			obj_donut.donut = true;
			obj_player.player_score += 500;
			obj_robo.chipscore += 1;
			soundright = audio_play_sound(snd_right_letter,100,false);
			sprite_index = noone; alarm[0] = 90;
			letterscore = true;
		}
		else if (obj_player.deliverA) || (obj_player.deliverB) || (obj_player.deliverD) || (obj_player.deliverE) {
			obj_player.player_score -= 500;
			obj_player.deliverA = false; obj_player.deliverB = false; obj_player.deliverD = false; obj_player.deliverE = false;
			sprite_index = noone; alarm[0] = 90;
			soundwrong = audio_play_sound(snd_wrong_letter,100,false);
		}
	}	
}