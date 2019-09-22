/// @description Insert description here
// You can write your code in this editor

init_x = obj_dragon_harder.x
init_y = obj_dragon_harder.y

var cam = view_get_camera(0);
camw = camera_get_view_width(cam);

image_speed = 0
image_blend = c_fuchsia;

alarm[0] = 100

max_dragon_health = 20;
dragon_health = max_dragon_health;

sp_hp_lab = spr_boss_label;
sp_hp = spr_boss_health;

cooldown = 0

alarm[4] = 480

timeline_index = timeline_boss
timeline_running = true
timeline_loop = true
