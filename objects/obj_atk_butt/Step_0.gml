if (mouse_check_button_released(mb_left)) {
	if (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),bbox_left,bbox_top,bbox_right,bbox_bottom)) {
		global.attack++;
		health = global.max_health;
		bg_reference.skill_pick = true;
		audio_play_sound(snd_button, 5, false);
	}
}