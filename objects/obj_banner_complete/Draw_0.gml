var _sequenz_sprite = [];
_sequenz_sprite[0] = sBannerWon1;
_sequenz_sprite[1] = sBannerWon2;

draw_set_color($262626);
draw_set_alpha(0.6 * image_alpha);
draw_rectangle(x - (room_width / 2), (y + 108.5) - (room_height / 2), x + (room_width / 2), (y + 108.5) + (room_height / 2), false);

draw_set_color(c_white);
draw_set_alpha(1.0);

draw_self();

draw_set_font(font_1);
draw_set_color(colour);
draw_set_alpha(image_alpha);
draw_set_halign(halign);
draw_set_valign(valign);

draw_text(x, y - 96, text_1);

draw_set_font(font_2);

if (obj_robo.chipscore == 10) 
{
	draw_text(x, y + 8, text_3)
	sprite_index = _sequenz_sprite[1];
}
else 
{	
	draw_text(x, y + 8, text_2);
	sprite_index = _sequenz_sprite[0];
}

draw_set_color(c_white);
draw_set_alpha(1.0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);