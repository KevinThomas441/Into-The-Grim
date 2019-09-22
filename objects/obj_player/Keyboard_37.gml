
//if touching the floor while climbing, detach
if (climbing) { 
	if (place_meeting(x, y + 1, obj_geometry)) {
		climbing = false;
	}
}

//if not climbing, move left
//not else if because this should check if climbing was set false previously
if (!climbing && control_enabled && !is_dead) {
	
	//when pressing against a wall, holding left attaches player to wall
	if (place_meeting(x - (move_spd + (global.move_speed / 4)), y, obj_geometry)) {
		climbing = true;
		jumping = false;
		y = y - 8;
		if (sprite_index != sp_climb_left) {
			sprite_index = sp_climb_left;
			image_speed = 0;
			image_index = 0;
		}
		gravity = 0;
		vspeed = 0;
	}
	
	//if there is no level geometry in the way, move left and update the sprite
	else if (!place_meeting(x - (move_spd + (global.move_speed / 4)), y, obj_geometry)) {
		x -= move_spd + (global.move_speed / 4);
		current_direction = -1;
		if (!swing_cd/* && sprite_index != sp_move_left*/) {
			sprite_index = sp_move_left;
			image_speed = 1;
		}
	}
}