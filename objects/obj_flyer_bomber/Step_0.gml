vsp = vsp + grv;
//Horizontal Collision
if(!place_empty(x+hsp, y))
{
	while(place_empty(x+sign(hsp), y))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical Collision
if(!place_empty(x, y+vsp))
{
	while(place_empty(x, y+sign(vsp)))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
if (instance_exists(obj_player)) {
	if(x<obj_player.x+50 && x>obj_player.x-50)
	{
		if(can_drop = 0)
		{
			audio_stop_sound(snd_bat_squeel);
			audio_play_sound(snd_bat_squeel, 5, false);
			instance_create_layer(x, y, "Instances", obj_rock);
			can_drop = 50;
		}
		else
		{
			can_drop--;
		}
	}
}