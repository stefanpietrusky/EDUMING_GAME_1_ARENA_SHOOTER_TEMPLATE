banner_life = 2;
banner_alpha = image_alpha;

text_1 = "INCOMING WAVE " + string(obj_game_manager.curr_wave);
font_1 = fnt_trainfont_96;
colour_1 = $FFFFFF;
halign = fa_center;
valign = fa_middle;

text_2 = "GET READY!";
font_2 = fnt_trainfont_30;
colour_2 = $262626;

font_enable_effects(fnt_trainfont_96, true, {
    outlineEnable: true,
    outlineDistance: 4,
    outlineColour: $262626
});