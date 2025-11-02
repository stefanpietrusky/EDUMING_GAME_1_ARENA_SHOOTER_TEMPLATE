draw_set_color($262626);
draw_set_alpha(0.6);
draw_rectangle(x - (room_width / 2), (y) - (room_height / 2), x + (room_width / 2), (y) + (room_height / 2), false);

draw_set_color(c_white);
draw_set_alpha(1.0);

draw_self();

draw_set_font(font);
draw_set_color(colour);
draw_set_halign(halign);
draw_set_valign(valign);

draw_text(x, y, text);

draw_set_color(c_white);
draw_set_alpha(1.0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);