if (shake) && (instance_exists(obj_player))
{ 
    shake_time -= 1; 
    
    var _xval = choose(-shake_magnitude, shake_magnitude); 
    var _yval = choose(-shake_magnitude, shake_magnitude); 
    
    var _curr_x = camera_get_view_x(view_camera[0]);
    var _curr_y = camera_get_view_y(view_camera[0]);
    
    camera_set_view_pos(view_camera[0], _curr_x + _xval, _curr_y + _yval);

    if (shake_time <= 0) 
    { 
        shake_magnitude -= shake_fade; 

        if (shake_magnitude <= 0) 
        { 
            var player_x = obj_player.x - (camera_get_view_width(view_camera[0]) / 2);
            var player_y = obj_player.y - (camera_get_view_height(view_camera[0]) / 2);
            camera_set_view_pos(view_camera[0], player_x, player_y);
            shake = false; 
        } 
    } 
}