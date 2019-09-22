//if the player is still alive, reenable controls. otherwise, let the player's dead body hang there
if (health > 0) {
	control_enabled = true;
}
else {
	alarm[3] = room_speed * 2;
}

