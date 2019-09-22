/// @description Insert description here
// You can write your code in this editor

init_x = obj_dragon.x
init_y = obj_dragon.y

cooldown = 0

var cam = view_get_camera(0);
camw = camera_get_view_width(cam);

image_speed = 0

alarm[0] = 100

max_dragon_health = 30;
dragon_health = max_dragon_health;

sp_hp_lab = spr_boss_label;
sp_hp = spr_boss_health;

alarm[2] = 480


