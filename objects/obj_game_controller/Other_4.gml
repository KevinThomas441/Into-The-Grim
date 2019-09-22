//what is the next room to be moved into
var next_room = room;

reset_playing();

//is the next room a new room? (ie did the player die and restart room?)
var new_room = true;
if (next_room == current_room) {
	new_room = false;
}

//set the current room to be the loaded in room
current_room = room;

//if we need to set the player to move when entering a room
var hspd = 0;
var vspd = 0;

//check which room the loaded room is
#region rm_climb_test
if (room == rm_climb_test) {
	if (new_room) {
		//if there was a level transition, set the new player spawn point
		global.pl_spawn_x = 416;
		global.pl_spawn_y = 544;
	}
	
	spawn_soul(0);
}
#endregion

#region rm_outside_start
else if (room == rm_outside_start) {
	global.pl_spawn_x = 32;
	global.pl_spawn_y = 1824;
}
#endregion

#region rm_outside_dead
else if (room == rm_outside_dead) {
	if (new_room) {	
		if (global.room_entrance == 0) {
			global.pl_spawn_x = 32;
			global.pl_spawn_y = 1824;
		}
		else if (global.room_entrance == 1) {
			global.pl_spawn_x = 896;
			global.pl_spawn_y = 64;
			hspd = -30;
			vspd = -3;
		}
		else if (global.room_entrance == 2) {
			global.pl_spawn_x = 128;
			global.pl_spawn_y = 1376;
			hspd = -1;
		}
		else if (global.room_entrance == 3) {
			global.pl_spawn_x = 704;
			global.pl_spawn_y = 320;
			hspd = -1;
		}
	}
	spawn_soul(1);
	spawn_soul(3);
}
#endregion

#region rm_inside_0
else if (room == rm_inside_0) {
	if (new_room) {
		if (global.room_entrance == 0) {
			global.pl_spawn_x = 160;
			global.pl_spawn_y = 608;
			hspd = 1;
		}
		else if (global.room_entrance == 1) {
			global.pl_spawn_x = 1632;
			global.pl_spawn_y = 64;
			hspd = 1;
		}
	}
	spawn_soul(4);
	spawn_soul(5);
	spawn_soul(6);
	spawn_soul(7);
}
#endregion

#region rm_inside_1
else if (room == rm_inside_1) {
	
	if (new_room) {
		if (global.room_entrance == 0) {
			global.pl_spawn_x = 224;
			global.pl_spawn_y = 64;
			hspd = -1;
		}
		else if (global.room_entrance == 1) {
			global.pl_spawn_x = 1728;
			global.pl_spawn_y = 832;
			hspd = -1;
		}
	}
	
	spawn_soul(8);
	spawn_soul(9);
	spawn_soul(10);
	spawn_soul(11);
	
}
#endregion

#region rm_inside_2
else if (room == rm_inside_2) {

	if (new_room) {
		if (global.room_entrance == 0) {
			global.pl_spawn_x = 128;
			global.pl_spawn_y = 1248;
			hspd = 1;
		}
		else if (global.room_entrance == 1) {
			global.pl_spawn_x = 128;
			global.pl_spawn_y = 576;
			hspd = 1;
		}
	}
	spawn_soul(12);
	spawn_soul(13);
	spawn_soul(14);
	spawn_soul(15);
}
#endregion

#region rm_transition_test
else if (room == rm_transition_test) {
	if (new_room) {
		global.pl_spawn_x = 928;
		global.pl_spawn_y = 672;
		hspd = -10;
		vspd = -10;
	}
}
#endregion

#region rm_boss
else if (room = rm_boss) {
	if (new_room) {
		global.pl_spawn_x = 32;
		global.pl_spawn_y = 96;
	}
	spawn_soul(2);
}
#endregion

#region rm_end
if (room == rm_end) {
	instance_destroy(self);
	global.pl_spawn_x = room_width / 2;
	global.pl_spawn_y = room_height * 2;
}
#endregion

//spawn the player
var pl = instance_create_layer(global.pl_spawn_x, global.pl_spawn_y, "Instances", obj_player);

pl.hspeed = hspd;
pl.vspeed = vspd;

pl.alarm[4] = room_speed / 4;

if (hspd < 0) {
	pl.current_direction = -1;
}