//an attack can only hit an enemy on one frame
//each frame, check if the enemy was already hit by the attack
//if not, hit the attack
var i;
var already_hit = false;
for (i = 0; i < enemies_hit + 1; i++) {
	if (enemies_hit_list[i] == other) {
		already_hit = true;
	}
}

//if the enemy is not in the list of enemies already hit, attack it and add it to the list
if (!already_hit) {
	audio_play_sound(snd_enemy_hit, 5, false);
	other.enemy_health -= global.attack;
	other.pushback_distance = pushback_distance;
	other.pushback_time = pushback_time;
	other.push_direction = swing_direction;
	
	enemies_hit_list[enemies_hit] = other;
	enemies_hit++;
	
	other.image_index = 1;
	//create a new spot in the list to prevent the above loop from crashing
	enemies_hit_list[enemies_hit] = 0;
}

//if enemy's health goes below 0, kill enemy
if (other.enemy_health <= 0) {
	other.is_dead = true;
	other.image_index = 1;
	other.alarm[1] = 12;
}