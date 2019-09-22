//set enemy damage consequences
enemy_vkb = -3;
enemy_hkb = -10;
iframe = false;
iframe_hit = 0;
control_enabled = true;
flash = 0;


//set default gravity
gravity_direction = 270; 
gravity = 0;

//used to judge if player is climbing
climbing = false;
jumping = false;
//when climbing to the top, character does a jump to finish
//disables collision with blocks setting vspeed = 0 while true
climb_jump = false;

is_dead = false;

room_switch = false;

//set player move and climb speed
move_spd = 3;
climb_spd = 2;

//set player jump heights
jump_height = -8;
climb_jump_height = -4;
climb_jump_distance = 8;
climb_height = -6;

//set current direction
current_direction = 1;

//set default sprites
image_speed = 0;
sp_move_left = spr_plyr_runL;
sp_move_right = spr_plyr_runR;
sp_dead_left = spr_plyr_deathL;
sp_dead_right = spr_plyr_deathR;
sp_jump_left = spr_plyr_jumpL;
sp_jump_right = spr_plyr_jumpR;
sp_climb_left = spr_plyr_runL;
sp_climb_right = spr_plyr_runR;

//sets stats of swings
swing_cd = false;
swing_speed = 12;
swing_impact_delay = 8;
swing_damage = 2;
