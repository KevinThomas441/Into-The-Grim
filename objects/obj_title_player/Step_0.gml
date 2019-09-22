/// @description Insert description here
// You can write your code in this editor

if (x > room_width + 200 and speed > 0){
	instance_create_layer(x,y,"Instances",obj_title_player)
	instance_destroy(self)}
	
if (x < -200 and speed < 0){
	instance_create_layer(x,y,"Instances",obj_title_player)
	instance_destroy(self)}