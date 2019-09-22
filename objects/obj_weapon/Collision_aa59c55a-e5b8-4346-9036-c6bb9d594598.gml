if (other.attached && !soul_hit) {
	//deactivate the soul
	other.attached = false;
	other.sprite_index = other.sp_base;
	
	soul_hit = true;
	
	audio_play_sound(snd_powerup, 5, false);
	
	//set player spawn position
	global.pl_spawn_x = other.x;
	global.pl_spawn_y = other.y - 64;
	global.soul_get = true;
	
	//increase total souls collected
	global.soul_collected++;

	//set off the level up sequence
	global.gc.soul_stuff = other.id;
	global.gc.alarm[0] = 1;
	
	//keep soul deactivated on room reload
	global.soul_hit[other.soul_index] = true;

	//let player swing again
	if (instance_exists(player)) {
		player.swing_cd = false;
	}
	
}