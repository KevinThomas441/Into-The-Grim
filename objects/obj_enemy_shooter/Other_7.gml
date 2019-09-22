if (sprite_index == spr_golem_attackL || sprite_index == spr_golem_attackR) {
	shoot_anim = false;
	
	if (hsp > 0) {
		sprite_index = spr_golem_walkR;
	}
	else {
		sprite_index = spr_golem_walkL;
	}
}