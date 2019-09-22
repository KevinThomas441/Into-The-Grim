if (instance_exists(obj_player)) {
	if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
		is_hidden = false;
		if (layer_exists("Hidden_Layer")) {
			layer_set_visible("Hidden_Layer", false);
		}
	}
}