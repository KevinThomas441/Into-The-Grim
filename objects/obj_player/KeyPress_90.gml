if (control_enabled) {
	//if not climbing, do a normal jump
	if (!climbing) {
		if (!place_empty(x, y + 1))
		{
			jumping = true;
			vspeed = jump_height;
			if (current_direction > 0) {
				sprite_index = spr_plyr_jumpR;
				image_speed = 1;
			}
			else {
				sprite_index = spr_plyr_jumpL;
				image_speed = 1;
			}
			audio_play_sound(snd_player_jump, 5, false);
		}
	}

	//if climbing, hop off wall
	else if (climbing) {
		if (keyboard_check(vk_up)) {
			if (place_empty(x, y + 1))  {
				vspeed = climb_jump_height;
				climb_jump = true;
			}
		}
		else {
			if (place_empty(x - current_direction, y + 1)) {
				
				audio_play_sound(snd_player_jump, 5, false);
				climbing = false;
				jumping = true;
				vspeed = climb_jump_height;
				current_direction *= -1;
				hspeed = climb_jump_distance * current_direction;
		
				if (current_direction > 0) {
					sprite_index = sp_move_right;
				}
				else {
					sprite_index = sp_move_left;
				}
			}
		}
	}
}