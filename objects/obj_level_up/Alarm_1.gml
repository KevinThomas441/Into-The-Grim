soul_shot_start = true;

new_soul = instance_create_layer(soulx + 30, souly + 13, lvup_layer, obj_soul_free);
new_soul.bg_reference = id;
new_soul.ob_temp_player = ob_temp_player;
