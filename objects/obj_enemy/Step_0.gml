//push enemy backwards when it gets hit
if (pushback_time > 0) {
	pushback_time -= 1;
	if (!place_meeting((x + pushback_distance * push_direction), y, obj_geometry)) {
		x += pushback_distance * push_direction;
	}
	
	if (pushback_time <= 0) {
		pushback_time = 0;
		pushback_distance = 0;
		if (enemy_health >= 0) {
			image_index = 0;
		}
	}
}
if (hsp < 0 && sprite_index != spr_golem_walkL) {
	sprite_index = spr_golem_walkL;
}
else if (hsp > 0 && sprite_index != spr_golem_walkR) {
	sprite_index = spr_golem_walkR;
}

//kevin changes
vsp = vsp + grv;
//Horizontal Collision
if(place_meeting(x+hsp, y, obj_geometry))
{
	while(!place_meeting(x+sign(hsp), y, obj_geometry))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x, y+vsp, obj_geometry))
{
	while(!place_meeting(x, y+sign(vsp), obj_geometry))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	if (height_fear) && !place_meeting(x+((sprite_width/2)*sign(hsp)), y+((sprite_height/2)+8), obj_geometry) {
		hsp = -hsp;
	}
}
y = y + vsp;
switch(state)
{
	case e_state.idle:
	{
		height_fear = 1;
		if (instance_exists(obj_player)) {
			if(distance_to_object(obj_player)<50)
			{
				state = e_state.chase;
			}
		}
	}
	break;
	case e_state.chase:
	{
		if (instance_exists(obj_player)) {
			if (!obj_player.is_dead) {
				hsp = sign(obj_player.x - x)*2;
				vsp = (min(7, vsp+0.05));
				height_fear = 0;
				if(distance_to_object(obj_player)>100)
				{
					state = e_state.idle;
				}
			}
			else {
				state = e_state.idle;
			}
		}
	}
	break;
}