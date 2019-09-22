//if this is frame one of the weapon existing, orient its starting swing position
if (frame_one) {
	frame_one = false;
	if (swing_direction == 1) {
		image_xscale = -1;
		swing_speed *= -1;
		image_angle = 45;
	}
	else {
		image_angle = 315;
	}
}

//if the player exists, follow the player as they move. otherwise, destroy self
if (instance_exists(player)) {
	x = player.x + 64;
	y = player.y + 80;
}
else {
	instance_destroy(self);
}

//if swing is in progress, pivot the angle
if (swing_go) {
	image_angle += swing_speed;
}

//if the image angle goes above 360 or below 0, wrap it around so the next if statement works
if (image_angle >= 360) {
	image_angle -= 360;
}
else if (image_angle <= 0) {
	image_angle += 360;
}

//if the swing completes, deactivate swing and destroy self after slight delay
if (image_angle <= 270 && image_angle >= 90 && swing_go) {
	swing_go = false;
	alarm[0] = impact_delay;
}