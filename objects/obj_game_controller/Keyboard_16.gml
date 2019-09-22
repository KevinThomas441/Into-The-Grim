//Cheat codes

//increase max health
if (keyboard_check_pressed(ord("H"))) {
	global.max_health++;
	health++;
	show_debug_message("Max Health: " + string(global.max_health));
	show_debug_message("Health: " + string(health));
}

//increase attack
if (keyboard_check_pressed(ord("A"))) {
	global.attack++;
	show_debug_message("Attack: " + string(global.attack));
}

//increase speed
if (keyboard_check_pressed(ord("S"))) {
	global.move_speed++;
	show_debug_message("Speed: " + string(global.move_speed));
}

//damage the player
if (keyboard_check_pressed(ord("D"))) {
	if (instance_exists(obj_player)) {
		take_damage(obj_player, 1);
	}
}

#region go to rooms
//go to boss room
if (keyboard_check_pressed(ord("B"))) {
	global.room_entrance = 0;
	room_goto(rm_boss);
}

//go to room 0
if (keyboard_check_pressed(ord("0"))) {
	global.room_entrance = 0;
	room_goto(rm_inside_0);
}

//go to room 1
if (keyboard_check_pressed(ord("1"))) {
	room_goto(rm_inside_1);
}

//go to room 2
if (keyboard_check_pressed(ord("2"))) {
	global.room_entrance = 0;
	room_goto(rm_inside_2);
}
#endregion

//restore health
if (keyboard_check_pressed(ord("R"))) {
	health = global.max_health;
}

//damage dragon
if (keyboard_check_pressed(ord("L"))) {
	if (instance_exists(obj_dragon)) {
		obj_dragon.dragon_health -= 5;
	}
	else if (instance_exists(obj_dragon_harder)) {
		obj_dragon_harder.dragon_health -= 5;
	}
}