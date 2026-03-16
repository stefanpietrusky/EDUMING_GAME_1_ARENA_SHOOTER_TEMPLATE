if (!letters)
{
    var _x = other.x;
    var _y = other.y;
    letters_stt = {
        x : _x,    
        y : _y,
    };
    
    letters = true;

    if (other.sprite_index == sLetterA) A = true;
    if (other.sprite_index == sLetterB) B = true;
    if (other.sprite_index == sLetterC) C = true;

    pickup_sound = audio_play_sound(snd_letter_pickup, 100, false);
    instance_destroy(other);
}