if (instance_exists(self)) {

	var hp_filled = dragon_health;

	for (var i = 0; i < 3; i++) {
		for (var j = 0; j < 10; j++) {
			var index = 1;
			if (hp_filled > 0) {
				index = 0;
				hp_filled--;
			}
			draw_sprite (sp_hp, index, (camw * 2 / 3) + 64 + (16 * j), 48 + (16 * i));
		}
	}
}