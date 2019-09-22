
if ((sprite_index == sp_jump_left || sprite_index == sp_jump_right) && image_index == 6) {
	image_speed = 0;
}


#region disable gravity
//if there is something below the player, disable gravity
if (place_meeting(x, y + 1, obj_geometry)) {
	gravity = 0;
	jumping = false;
	if (!is_dead) {
		if (current_direction == 1 && sprite_index != sp_move_right) {
			sprite_index = sp_move_right;
			image_speed = 0;
		}
		else if (current_direction == -1 && sprite_index != sp_move_left){
			sprite_index = sp_move_left;
			image_speed = 0;
		}
	}
}
#endregion

#region enable gravity
//if there is nothing below the player and they are not climbing, enable gravity
else if (!climbing) {
	gravity = 0.25;
	jumping = true;
	if (!is_dead) {
		if (current_direction == 1 && sprite_index != sp_jump_right) {
			sprite_index = sp_jump_right;
			image_speed = 0;
			image_index = 6;
		}
		else if (current_direction == -1 && sprite_index != sp_jump_left){
			sprite_index = sp_jump_left;
			image_speed = 0;
			image_index = 6;
		}
	}
}
#endregion

#region disable climbing
if (climbing) {
	//if no longer climbing, set climbing to false and jump up
	if (!place_meeting(x + (current_direction * (move_spd + (global.move_speed / 4))), y, obj_geometry)) {
		climbing = false;
		if (!is_dead) {
			if (current_direction == 1 && sprite_index != sp_move_right) {
				sprite_index = sp_move_right;
				image_speed = 0;
			}
			else if (current_direction == -1 && sprite_index != sp_move_left) {
				sprite_index = sp_move_left;
				image_speed = 0;
			}
		}
		if (place_empty(x, y - climb_jump_height)) {
			vspeed = climb_jump_height;
			climb_jump = true;
		}
	}
}
#endregion

#region disable climb_jump
//when falling, reenable collision with geometry
if (climb_jump && vspeed >= 0) {
	climb_jump = false;
	if (place_meeting(x + (current_direction * (move_spd + (global.move_speed / 4))), y, obj_geometry)) {
		gravity = 0;
		if (!is_dead) {
			if (current_direction == 1 && sprite_index != sp_climb_right) {
				sprite_index = sp_climb_right;
				image_speed = 0;
			}
			else if (current_direction == -1 && sprite_index != sp_climb_left) {
				sprite_index = sp_climb_left;
				image_speed = 0;
			}
		}
	}
}
#endregion

#region reduce iframes
//if the iframe countdown is done, let damage happen again
//this is only here for future proofing in case we add different things 
//other than damage, such as doing a roll or something
if (iframe_hit <= 0) {
	iframe = false;
}
#endregion

#region reduce horizontal momentum
//after jumping off wall, reduce horizontal momentum
if (hspeed != 0) {
	if (place_meeting(x + hspeed, y, obj_geometry)) {
		climbing = true;
		if (!is_dead) {
			if (current_direction == 1 && sprite_index != sp_climb_right) {
				sprite_index = sp_climb_right;
				image_index = 0;
				image_speed = 0;
			}
			else if (current_direction == -1 && sprite_index != sp_climb_left) {
				sprite_index = sp_climb_left;
				image_index = 0;
				image_speed = 0;
			}
		}
		gravity = 0;
		vspeed = 0;
	}
	
	var speed_dec = .15;
	
	if (!control_enabled) {
		speed_dec = .3;
	}
	
	if (hspeed > 0) {
		hspeed -= speed_dec;
		if (hspeed < 0) {
			hspeed = 0;
		}
	}
	
	else if (hspeed < 0) {
		hspeed += speed_dec;
		if (hspeed > 0) {
			hspeed = 0;
		}
	}
}
#endregion