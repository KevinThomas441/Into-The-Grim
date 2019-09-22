//draws labels for each stat
draw_sprite(sp_hp_lab, 0, 32, 8);
draw_sprite(sp_at_lab, 0, 32, 40);
draw_sprite(sp_sp_lab, 0, 32, 72);

//draws health bar, darkening lost hp
var hp_filled = health;

for (var i = 0; i < global.max_health; i++) {
	if (hp_filled > 0) {
		draw_sprite(sp_hp, 0, 80 + (16 * i), 16);
		hp_filled--;
	}
	else {
		draw_sprite(sp_hp, 1, 80 + (16 * i), 16);
	}
}

//draws attack bar
for (var i = 0; i < global.attack; i++) {
	draw_sprite(sp_at, 0, 80 + (16 * i), 48);
}

//draws speed bar
for (var i = 0; i < global.move_speed; i++) {
	draw_sprite(sp_sp, 0, 80 + (16 * i), 80);
}