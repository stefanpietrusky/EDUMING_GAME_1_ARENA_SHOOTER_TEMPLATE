if (mouse_x != global.cursor_x || mouse_y != global.cursor_y)
{
    global.last_input_method = "mouse";
    global.cursor_x = mouse_x;
    global.cursor_y = mouse_y;
}

if (gamepad_is_connected(0))
{
    var dx = gamepad_axis_value(0, gp_axisrh);
    var dy = gamepad_axis_value(0, gp_axisrv);

    if (abs(dx) > 0.35 || abs(dy) > 0.35)
    {
        global.last_input_method = "controller";

        speed = 20;
        global.cursor_x += dx * speed;
        global.cursor_y += dy * speed;
    }
}

global.cursor_x = clamp(global.cursor_x, 0, room_width);
global.cursor_y = clamp(global.cursor_y, 0, room_height);

if (is_highscore_table)
{
    var close_overlay = false;

    if (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))
    {
        close_overlay = true;
    }

    var _max_pads = gamepad_get_device_count();
    for (var _i = 0; _i < _max_pads; _i++)
    {
        if (gamepad_is_connected(_i))
        {
            if (gamepad_button_check_pressed(_i, gp_face1) ||
                gamepad_button_check_pressed(_i, gp_face2) ||
                gamepad_button_check_pressed(_i, gp_start))
            {
                close_overlay = true;
            }
        }
    }

    if (close_overlay)
    {
        if (ignore_close_click)
        {
            ignore_close_click = false;
        }
        else
        {
            is_highscore_table = false;
        }
    }
}
else
{
    ignore_close_click = false;
}

if (is_highscore_table)
{
    highscores_alpha_target = 1.0;
}
else
{
    highscores_alpha_target = 0.0;
}