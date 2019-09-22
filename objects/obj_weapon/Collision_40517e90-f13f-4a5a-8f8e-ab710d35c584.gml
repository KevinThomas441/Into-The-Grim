//if the pickaxe hits a wall, jump towards wall
if (player.jumping && !player.climbing) {
	if ((swing_direction == 1 && image_angle > 45) || 
	(swing_direction == -1 && image_alpha < 315)) {
		swing_go = false;
		player.hspeed = 5 * player.current_direction;
	
		alarm[0] = 1;
	
		if (instance_exists(obj_player)) {
			obj_player.climbing = true;
			obj_player.alarm[0] = 1;
		}
	}
}