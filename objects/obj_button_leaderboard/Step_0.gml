var cx = global.cursor_x;
var cy = global.cursor_y;

is_hovered = point_in_rectangle(cx, cy, bbox_left, bbox_top, bbox_right, bbox_bottom);

if (!is_pressed)
{
    if (is_hovered)
    {
        target_scale = 0.95;
    }
    else
    {
        target_scale = 1.0;
    }
}

var activate = false;

if (global.last_input_method == "mouse")
{
    if (is_hovered && mouse_check_button_pressed(mb_left))
    {
        activate = true;
    }
}

var _max_pads = gamepad_get_device_count();
for (var _i = 0; _i < _max_pads; _i++)
{
    if (gamepad_is_connected(_i))
    {
        if (is_hovered && gamepad_button_check_pressed(_i, gp_face1))
        {
            activate = true;
        }
    }
}

if (activate && !is_pressed)
{
    is_pressed = true;
    target_scale = 0.9;
    scale_rate = 0.9;
    sound_button = audio_play_sound(snd_menu_button, 100, false);
    global.is_mouse_aiming = true;
}

if (image_xscale != target_scale || image_yscale != target_scale)
{
    if (can_scale_at_rate)
    {
        image_xscale = lerp(image_xscale, target_scale, scale_rate);
        image_yscale = lerp(image_yscale, target_scale, scale_rate);
    }
    else
    {
        image_xscale = target_scale;
        image_yscale = target_scale;
    }
}

if (is_pressed)
{
    if (image_xscale == target_scale && image_yscale == target_scale)
    {
        if (image_xscale == 1 && image_yscale == 1)
        {
            var splash = instance_find(obj_splash_manager, 0);
            if (instance_exists(splash))
            {
                splash.is_highscore_table = !splash.is_highscore_table;

                if (splash.is_highscore_table)
                {
                    splash.ignore_close_click = true;
                }
            }

            is_pressed = false;
            scale_rate = 0.1;
        }
        else
        {
            target_scale = 1.0;
        }
    }
}