
if (glow_done) {
	ob_hp_butt = instance_create_layer(camw, camh, lvup_layer, obj_hp_butt);
	ob_atk_butt = instance_create_layer(camw, camh, lvup_layer, obj_atk_butt);
	ob_spd_butt = instance_create_layer(camw, camh, lvup_layer, obj_spd_butt);
	
	ob_hp_butt.bg_reference = id;
	ob_atk_butt.bg_reference = id;
	ob_spd_butt.bg_reference = id;
	
	glow_done = false;
}

if (skill_pick) {
	if (instance_exists(ob_hp_butt)) {
		instance_destroy(ob_hp_butt);
		instance_destroy(ob_atk_butt);
		instance_destroy(ob_spd_butt);
	}
	instance_destroy(ob_temp_player);
	
	instance_activate_all();
	
	layer_destroy(lvup_layer);
	
	instance_destroy(self);
}