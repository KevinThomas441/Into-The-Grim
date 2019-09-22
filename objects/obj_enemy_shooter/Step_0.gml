vsp = vsp + grv;
//Horizontal Collision
if(place_meeting(x+hsp, y, obj_geometry))
{
	if (!place_meeting(x-hsp, y, obj_geometry)) {
		while(!place_meeting(x+sign(hsp), y, obj_geometry))
		{
			x = x + sign(hsp);
		}
		hsp = -hsp;
		if (!shoot_anim) {
			if (hsp > 0) {
				sprite_index = spr_golem_walkR;
			}
			else {
				sprite_index = spr_golem_walkL;
			}
		}
	}
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
	if (height_fear) && !place_meeting(x+((sprite_width/2)*sign(hsp)), y+((sprite_height/2)+8), obj_geometry)
	{
		hsp = -hsp;
		if (!shoot_anim) {
			if (hsp > 0) {
				sprite_index = spr_golem_walkR;
			}
			else {
				sprite_index = spr_golem_walkL;
			}
		}
	}
}
y = y + vsp;

switch(state)
{
	case e_state.idle:
	{
		if(distance_to_object(obj_player)<200)
		{
			state = e_state.chase;
		}
	}
	break;
	case e_state.chase:
	{
		
		hsp = 0;
		vsp = 0;
		height_fear = 0;
		if(distance_to_object(obj_player)>200)
		{
			state = e_state.idle;
			instance_create_layer(x, y, "Instances", obj_enemy_shooter);
			instance_destroy();
		}
		if(can_shoot <= 0)
		{
			instance_create_layer(x, y, "Instances", obj_projectile);
			can_shoot = room_speed * 2;
			
			shoot_anim = true;
			if (hsp > 0) {
				sprite_index = spr_golem_attackR;
			}
			else {
				sprite_index = spr_golem_attackL;
			}
		}
		else
		{
			can_shoot--;
		}
	}
	break;
}
