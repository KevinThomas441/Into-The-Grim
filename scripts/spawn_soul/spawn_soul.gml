///spawn_soul(i)

sx = global.soulx[argument0];
sy = global.souly[argument0];
global.soul[argument0] = instance_create_layer(sx, sy, "Instances", obj_soul_attached);

if (global.soul_hit[argument0]) {
	global.soul[argument0].attached = false;
	global.soul[argument0].sprite_index = global.soul[argument0].sp_base;
}

global.soul[argument0].soul_index = argument0;