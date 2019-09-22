enemy_health = 5;
hsp = 1.5;
vsp = 0;
grv = 0;
flash = 0;
can_drop = 0;
max_swoop = 8; // How far above or below the player's center the bat goes
turn_distance = 50; // How far pastthe player bat goes before turning
aggro_range = 200;// How close before attacking
safe_distance = 200; // Distance from player before fleeing bat goes idle
is_dead = false;
path_start(bomb_path, 1.5 * dir, path_action_restart, false);
state = fly_state.idle;
	