if (sprite_index == sDonut) && (obj_player.player_health < 3)
{
	donut = false;
	obj_player.player_health = 3;
	sounddonut = audio_play_sound(snd_donut_eat,150,false);
}
