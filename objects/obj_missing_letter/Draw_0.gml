draw_set_font(fnt_trainfont_20);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var padding_left = 20;
var padding_top = 20;
var text_x = x - 300;
var text_y = y - 60;
var wrap_w = 580;
var line_sep = 10;

var frage_h = string_height_ext(frage_aktuell.frage, 34, wrap_w);

var frage_label_y = text_y;
var frage_text_y  = frage_label_y + 40;
var antwort_a_y   = frage_text_y + frage_h + 15;
var antwort_b_y   = antwort_a_y + 35;
var antwort_c_y   = antwort_b_y + 35;
var feedback_y    = antwort_c_y + 40;

var box_x1 = x - 320;
var box_y1 = y - 80;
var box_x2 = x + 320;
var box_y2 = feedback_y + 45;

draw_set_alpha(0.75);
draw_set_color(c_black);
draw_roundrect(box_x1, box_y1, box_x2, box_y2, false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_text(text_x, frage_label_y, "FRAGE:");
draw_text_ext(text_x, frage_text_y, frage_aktuell.frage, 34, wrap_w);

draw_text(text_x, antwort_a_y, "A: " + frage_aktuell.a);
draw_text(text_x, antwort_b_y, "B: " + frage_aktuell.b);
draw_text(text_x, antwort_c_y, "C: " + frage_aktuell.c);

if (feedback_text != "") {
    draw_set_color(feedback_farbe);
    draw_text(text_x, feedback_y, feedback_text);
}