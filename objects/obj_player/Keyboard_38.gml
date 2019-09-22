//if the player is climbing, jump upward
if (climbing) {
	if (!place_meeting(x, y - climb_height, obj_geometry) && !climb_jump) {
		climb_jump = true;
		vspeed = climb_height - (global.move_speed / 4);
		gravity = .25;
		if (current_direction == 1) {
			sprite_index = sp_jump_right;
		}
		else {
			sprite_index = sp_jump_left;
		}
	}
}
