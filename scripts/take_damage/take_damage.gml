///take_damage(player);

if (!argument0.is_dead) {
	if (!argument0.iframe) {
		health -= argument1;
		show_debug_message("health: " + string(health));

		argument0.iframe = true;
		argument0.iframe_hit = 10;
		argument0.alarm[1] = 8;
		argument0.flash = 3;
	
	
		argument0.control_enabled = false;
		argument0.alarm[2] = room_speed / 5;
		if (health <= 0) {
			argument0.is_dead = true;
			
			audio_play_sound(snd_player_death, 5, false);
			if (argument0.current_direction == 1) {
				argument0.sprite_index = argument0.sp_dead_left;
			}
			else {
				argument0.sprite_index = argument0.sp_dead_right;
			}
		}
		if (!argument0.climbing) {
			argument0.hspeed = argument0.enemy_hkb * argument0.current_direction;
			argument0.vspeed = argument0.enemy_vkb;
			argument0.climb_jump = true;
		}
	}
}