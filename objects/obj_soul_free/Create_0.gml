//holds reference to other level up objects
bg_reference = 0;
ob_temp_player = 0;

//run this after 1 frame to ensure the temp player variable has been set
//set up path for soul to follow
alarm[0] = 1;
soul_path = path_add();
path_set_kind(soul_path, 1);
path_set_precision(soul_path, 4);
on_path = false;
path_endaction = path_action_stop;

//sets the default starting angle
image_angle = 270;

//lets the soul hover for a moment
start_wait = room_speed;

//freezes it into one frame
image_speed = 0; 