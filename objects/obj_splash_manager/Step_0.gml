if (mouse_x != global.cursor_x || mouse_y != global.cursor_y) {
    global.last_input_method = "mouse";
    global.cursor_x = mouse_x;
    global.cursor_y = mouse_y;
}

var dx = gamepad_axis_value(0, gp_axisrh);
var dy = gamepad_axis_value(0, gp_axisrv);

if (abs(dx) > 0.2 || abs(dy) > 0.2) {
    global.last_input_method = "controller";

    speed = 20;
    global.cursor_x += dx * speed;
    global.cursor_y += dy * speed;

    global.cursor_x = clamp(global.cursor_x, 0, display_get_width());
    global.cursor_y = clamp(global.cursor_y, 0, display_get_height());
}
