//lets the soul hover for a moment, then set it on its path
if (start_wait > 0) {
	start_wait--;
}
else if (!on_path) {
	on_path = true;
	path_start(soul_path, 1, path_action_stop, false);
}
if (on_path && path_position >= .95) {
	instance_destroy(self);
	global.soul_hit[bg_reference.soul.soul_index] = false;
	bg_reference.soul.attached = true;
	bg_reference.soul.sprite_index = bg_reference.soul.sp_attached;
	bg_reference.skill_pick = true;
}