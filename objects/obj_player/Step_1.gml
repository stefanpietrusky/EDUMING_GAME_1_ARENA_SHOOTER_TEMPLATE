if (player_health <= 0 && obj_game_manager.curr_game_state == GAME_STATE.PLAYING) {
	obj_game_manager.lose_game();
}

var input_used = "none"; 

if (global.is_touch) {
	var h = obj_joystick_left.joy_h;
	var v = obj_joystick_left.joy_v;

	if (abs(h) > 0.2 || abs(v) > 0.2) {
		input_used = "touch";
	}
}

if (input_used == "none" && gamepad_is_connected(player_local_id)) {
	var h = gamepad_axis_value(player_local_id, gp_axislh);
	var v = gamepad_axis_value(player_local_id, gp_axislv);

	if (abs(h) > 0.2 || abs(v) > 0.2) {
		input_used = "controller";
	}
}

if (input_used == "none" && player_local_id == 0) {
	if (keyboard_check(ord("W")) || keyboard_check(vk_up) ||
		keyboard_check(ord("S")) || keyboard_check(vk_down) ||
		keyboard_check(ord("A")) || keyboard_check(vk_left) ||
		keyboard_check(ord("D")) || keyboard_check(vk_right)) {
		input_used = "keyboard";
	}
}

switch (input_used) {
	case "touch":
		var h = obj_joystick_left.joy_h;
		var v = obj_joystick_left.joy_v;
		break;
	case "controller":
		var h = gamepad_axis_value(player_local_id, gp_axislh);
		var v = gamepad_axis_value(player_local_id, gp_axislv);
		break;
	case "keyboard":
		var up    = keyboard_check(ord("W")) || keyboard_check(vk_up);
		var down  = keyboard_check(ord("S")) || keyboard_check(vk_down);
		var left  = keyboard_check(ord("A")) || keyboard_check(vk_left);
		var right = keyboard_check(ord("D")) || keyboard_check(vk_right);
		h = (right - left);
		v = (down - up);
		break;
	default:
		h = 0;
		v = 0;
}

if (v < -0.5 && h < -0.5) {
	sprite_index = sPlayerBodyUL;
} else if (v < -0.5 && h > 0.5) {
	sprite_index = sPlayerBodyUR;
} else if (v > 0.5 && h < -0.5) {
	sprite_index = sPlayerBodyDL;
} else if (v > 0.5 && h > 0.5) {
	sprite_index = sPlayerBodyDR;
} else if (v < -0.5) {
	sprite_index = sPlayerBodyU;
} else if (v > 0.5) {
	sprite_index = sPlayerBodyD;
} else if (h < -0.5) {
	sprite_index = sPlayerBodyL;
} else if (h > 0.5) {
	sprite_index = sPlayerBodyR;
} else {
	sprite_index = sPlayerBody;
}
