//if dead, destroy self and reset the room after a brief period
instance_destroy(self);
global.gc.alarm[1] = room_speed;
