/// @description Insert description here
// You can write your code in this editor



if (x < room_width / 2){
	object_set_sprite(obj_title_player,spr_plyr_runL)
	direction = 0
	speed = 4}

if (x > room_width / 2){
	object_set_sprite(obj_title_player,spr_plyr_runR)
	direction = 360
	speed = -4}

