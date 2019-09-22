/// @description Insert description here
// You can write your code in this editor

cooldown -= 1

if (instance_exists(obj_player)) && point_distance(x, y, obj_player.x, obj_player.y) > 350{
direction = point_direction(x, y, obj_player.x, obj_player.y);
speed = 8

image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 180
}

if (instance_exists(obj_player)) && cooldown < 1 && point_distance(x, y, obj_player.x, obj_player.y) < 350{

alarm[0] = 0

cooldown = 10

}

with obj_fireball
    if place_meeting(x, y, obj_dragon_harder)
        with other {
			
			visible = false
        }
		
		else{
			visible = true
		}