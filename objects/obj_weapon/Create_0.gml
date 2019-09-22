//if the player exists, store a reference to the player
if (instance_exists(obj_player)) {
	player = obj_player;
}

//set starting variables for swing
frame_one = true;
swing_go = true;
swing_speed = 0;
swing_direction = 1;
impact_delay = 1;

//set variables to impact enemy 
pushback_distance = 6;
pushback_time = 4;

//create variables to hold enemies hit so that it doesn't hit once per frame
enemies_hit = 0;
enemies_hit_list[0] = 0;

//create variables relevant to boss fight
ice_hit = false;
dragon_hit = false;
soul_hit = false;