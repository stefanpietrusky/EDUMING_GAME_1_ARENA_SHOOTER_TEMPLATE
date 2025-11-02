if (!letters)
{
	var _x = other.x;
	var _y = other.y;
	letters_stt = {
		x : _x,	
		y : _y,
	}
	letters = true;
	instance_destroy(other);

	if (other.sprite_index == sLetterA) A = true;
	if (other.sprite_index == sLetterB) B = true;
	if (other.sprite_index == sLetterC) C = true;
	if (other.sprite_index == sLetterD) D = true;
	if (other.sprite_index == sLetterE) E = true;
	pickup_sound = audio_play_sound(snd_letter_pickup,100,false);
}