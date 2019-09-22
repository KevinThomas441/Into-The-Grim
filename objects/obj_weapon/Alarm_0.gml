//let player swing again
if (instance_exists(player)) {
	player.swing_cd = false;
}
instance_destroy(self);
