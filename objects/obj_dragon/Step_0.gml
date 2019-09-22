/// @description Insert description here
// You can write your code in this editor
if (image_index > 0 && cooldown < 1 && instance_exists(obj_player)){
	
	instance_create_layer(x - 50,y - 40,"Instances",obj_iceball)
	audio_play_sound(snd_iceball, 5, false);
	cooldown = room_speed / 2}
	
cooldown -= 1	

if (instance_exists(obj_player)){

	image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 200
}

	
if (dragon_health < 1){
	instance_destroy(self)	
	instance_create_layer(init_x,init_y,"Instances",obj_dragon_harder)
}

if (x > init_x && y < init_y){
			speed = 0 
			x = init_x
			y = init_y
			alarm[2] = 300
			}
		
		