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
	if !place_meeting(x+((sprite_width/2)*sign(hsp)), y+((sprite_height/2)+8), obj_geometry)
	{
		hsp = -hsp;
	}
}
y = y + vsp;

switch(state)
{
	case fly_state.idle:
		if (distance_to_object(obj_player) < aggro_range)
		{
			if(!obj_player.is_dead)
			{
				target_x = obj_player.x-100;
				target_y = obj_player.y-50;
				move_towards_point(target_x, target_y, 4);
				attack_dir = x - obj_player.x;
				audio_stop_sound(snd_bat_squeel);
				audio_play_sound(snd_bat_squeel, 5, false);
				state = fly_state.chase;
			}
		}
	break;
	case fly_state.chase:
		if(y >= target_y)
		{ 
	 		move_towards_point(target_x + (sign(attack_dir)*30), optimal_height, 2.5);
		}
		if(y <= optimal_height)
		{
			instance_create_layer(x, y, "Instances", obj_flyer_chaser);
			instance_destroy();
			state = fly_state.retreat;
		}
	break;
	case fly_state.retreat:
	if(y <= optimal_height)
		{
			instance_create_layer(x, y, "Instances", obj_flyer_chaser);
			instance_destroy();
			state = fly_state.idle;
		}
		break;	
}
if(enemy_health<=0)
{
	is_dead = true;
	gravity = 1;
}
