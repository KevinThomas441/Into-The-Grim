//set stats
global.max_health = 2;
health = global.max_health; 
global.attack = 2;
global.move_speed = 2;

//set global reference to game controller
global.gc = id;

//sets ui labels
sp_hp_lab = spr_health_label;
sp_at_lab = spr_attack_label;
sp_sp_lab = spr_speed_label;

sp_hp = spr_health;
sp_at = spr_attack;
sp_sp = spr_speed;

//holds references to objects needed for level up
ob_pause = 0;
ob_temp_player = 0;
soul_stuff = 0;

//holds information for player spawn
global.pl_spawn_x = 448;
global.pl_spawn_y = 640;
global.room_entrance = 0;
global.soul_get = false;
global.soul_collected = 0;
current_room = noone;
