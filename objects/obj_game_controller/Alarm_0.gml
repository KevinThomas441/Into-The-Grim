//starts level up sequence

//creates layer to draw over other layers
lvup_layer = layer_create(-1000);

//holds player information after player has been deactivated
var player_stuff;

if (instance_exists(obj_player)) {
	player_stuff = obj_player;
}

var psx = player_stuff.x;
var psy = player_stuff.y;
var pssi = player_stuff.sprite_index;
var psii = player_stuff.image_index;

//creates screenshot to hold pause screen
var temp_ss = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, false, false, 0, 0);

//pause game
instance_deactivate_all(true);

//create level up proceddure
ob_pause = instance_create_layer(0, 0, lvup_layer, obj_level_up);

//pass along relevant information
ob_pause.soulx = soul_stuff.x;
ob_pause.souly = soul_stuff.y;
ob_pause.soul = soul_stuff;
ob_pause.screenshot = temp_ss;
ob_pause.lvup_layer = lvup_layer;

ob_temp_player = instance_create_layer(psx, psy, lvup_layer, obj_player_temp);
ob_temp_player.sprite_index = pssi;
ob_temp_player.image_index = psii;
ob_pause.ob_temp_player = ob_temp_player;
ob_temp_player.bg_reference = ob_pause;
