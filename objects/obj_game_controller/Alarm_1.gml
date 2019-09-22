//restart the room after the player dies

if (room != rm_boss) {
	room_restart();
}
else {
	global.room_entrance = 1;
	room_goto(rm_outside_dead);
}

//restore health
health = global.max_health;
