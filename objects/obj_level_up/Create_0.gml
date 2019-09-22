bg_alpha = 1;
color_fade = 0.01;

ob_temp_player = 0;

//camx = view_camera[0].x;
//camy = view_camera[0].y;
var cam = view_get_camera(0);
camx = camera_get_view_x(cam);
camy = camera_get_view_y(cam);
camw = camera_get_view_width(cam);
camh = camera_get_view_height(cam);

start_fade = room_speed;
start_soul_animation = false;
soul_shot_start = false;
glow_done = false;
skill_pick = false;

lvup_layer = 0;

soul_animation_frame = 0;

screenshot = 0;

soulx = 0;
souly = 0;
soul = 0;
sp_soul_attached = spr_soul_attached;
sp_soul_base = spr_soul_base;

new_soulx = 31;
new_souly = 19;
new_soul = 0;

sp_hp_butt = spr_hp_butt;
sp_atk_butt = spr_atk_butt;
sp_spd_butt = spr_spd_butt;

hp_pick = false;
atk_pick = false;
spd_pick = false;

ob_hp_butt = 0;
ob_atk_butt = 0;
ob_spd_butt = 0;
