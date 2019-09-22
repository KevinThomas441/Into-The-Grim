draw_sprite_stretched(spr_black_bg, 0, camx, camy, camw, camh);
//draw_sprite(spr_blue_tile, 0, camx + (camw / 2), camy + (camh / 3))

if (sprite_exists(screenshot)) {
	draw_sprite_ext(screenshot, 0, camx, camy, 1, 1, 0, c_white, bg_alpha);
}

if (start_fade > 0) {
	start_fade--;
}
else {
	if (bg_alpha > 0) {
		bg_alpha -= color_fade;
		if (bg_alpha <= 0) {
			bg_alpha = 0;
			start_fade = false;
			alarm[0] = room_speed / 2;
			sprite_delete(screenshot);
		}
	}
}

if (start_soul_animation) {
	soul_animation_frame++;
	if (soul_animation_frame >= 18) {
		soul_animation_frame = 18;
		start_soul_animation = false;
		alarm[1] = room_speed / 2;
	}
}

//draw_sprite(sp_player, player_frame, playerx, playery);
if (!soul_shot_start) {
	draw_sprite(sp_soul_attached, soul_animation_frame / 2, soulx, souly);
}
else {
	draw_sprite(sp_soul_base, 0, soulx, souly);
}
	
	
