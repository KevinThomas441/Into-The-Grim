//when colliding with the room switch, grab the room to go to and the room entrance to use
if (room_switch) {
	global.room_entrance = other.loc_room;
	room_goto(other.ch_room);
}