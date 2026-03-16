if (sprite_index == sHeart) && (obj_player.player_health < 3)
{
	heart = false;
	obj_player.player_health = 3;
	soundheart = audio_play_sound(snd_heart_eat,150,false);
}
