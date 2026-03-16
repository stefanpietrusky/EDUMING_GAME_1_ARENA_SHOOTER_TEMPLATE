if (global.is_touch) {
    x = camera_get_view_x(view_camera[0]) + 1550;
    y = camera_get_view_y(view_camera[0]) + 150;
}
else {
    x = camera_get_view_x(view_camera[0]) + 1570;
    y = camera_get_view_y(view_camera[0]) + 140;
}

if (instance_exists(obj_player)) && (!letterscore) {

    var abgegeben = "";
    
    if (obj_player.deliverA) abgegeben = "A";
    if (obj_player.deliverB) abgegeben = "B";
    if (obj_player.deliverC) abgegeben = "C";

    if (abgegeben != "") {

        obj_player.deliverA = false;
        obj_player.deliverB = false;
        obj_player.deliverC = false;

        if (abgegeben == frage_aktuell.korrekt) {
            obj_heart.heart = true;
            obj_player.player_score += 500;
            obj_robo.chipscore += 1;
            soundright = audio_play_sound(snd_right_letter, 100, false);

            feedback_text = "RICHTIG!";
            feedback_farbe = c_lime;

            letterscore = true;
            alarm[0] = 90;
        }
        else {
            obj_player.player_score -= 500;
            soundwrong = audio_play_sound(snd_wrong_letter, 100, false);

            feedback_text = "FALSCH!";
            feedback_farbe = c_red; 

            alarm[0] = 90;
        }
    }
}