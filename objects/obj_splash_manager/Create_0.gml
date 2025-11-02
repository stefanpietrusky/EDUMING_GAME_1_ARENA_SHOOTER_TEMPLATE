layer_sequence_create("Instances", room_width / 2, room_height / 2, seq_splash);

global.cursor_x = display_get_width()  / 2;
global.cursor_y = display_get_height() / 2;
global.last_input_method = "mouse";

is_highscore_table = false;
highscores_alpha = 0.0;
highscores_alpha_target = 0.0;

highscores = [];

for (var _i = 0; _i < 10; _i ++)
{
	highscores[_i] = 0;
}

high_score_buffer = buffer_load("PCLQ_HS.sav");

if(buffer_exists(high_score_buffer))
{
	buffer_seek(high_score_buffer, buffer_seek_start, 0);
	
	for (var _i = 0; _i < 10; _i ++)
	{
		highscores[_i] = buffer_read(high_score_buffer, buffer_u64);
	}
}
else
{
	high_score_buffer = buffer_create(16384, buffer_fixed, 2);
	buffer_seek(high_score_buffer, buffer_seek_start, 0);
	
	for (var _i = 0; _i < 10; _i ++)
	{
		buffer_write(high_score_buffer, buffer_u64, highscores[_i]);
	}
	
	buffer_save(high_score_buffer, "PCLQ_HS.sav");
}

text = "HIGH SCORES";
font_1 = fnt_trainfont_96;
font_2 = fnt_trainfont_36;
colour = c_white;
halign = fa_center;
valign = fa_middle;

font_enable_effects(fnt_trainfont_96, true, {
    outlineEnable: true,
    outlineDistance: 4,
    outlineColour: $262626
});

font_enable_effects(fnt_trainfont_36, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: $262626
});

audio_stop_all();
music = audio_play_sound(snd_music_menu_main, 100, true);

if (os_type == os_android || os_type == os_ios || os_type == os_gxgames)
{
	global.is_touch = true;
}
else
{
	global.is_touch = false;
}