/// @description Insert description here
// You can write your code in this editor

cooldown -= 1

if (image_index > 0 && cooldown < 1 && instance_exists(obj_player) && y != 500){
	
	instance_create_layer(x - 100,y + 50,"Instances",obj_fireball)
	audio_play_sound(snd_fireball, 5, false);
	cooldown = room_speed / 5;
}
	
if (image_index > 0 && cooldown < 1 && instance_exists(obj_player) && y == 500){
	
	instance_create_layer(x - 100,y,"Instances",obj_fireball)
	audio_play_sound(snd_fireball, 5, false);
	cooldown = room_speed / 5;
}

if (instance_exists(obj_player)){

	image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 200
}
			
	
if (dragon_health < 1){
	instance_destroy(self)
	instance_create_layer(x, y, "Instances", obj_dragon_dead);
}

if (y < init_y){
	speed = 0 
	x = init_x
	y = init_y
}
if (y > 500){
	speed = 0 
	x = init_x
	y = 500
}
		
		