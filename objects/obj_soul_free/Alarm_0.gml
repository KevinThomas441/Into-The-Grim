//create path for soul to follow
var xdis = x - ob_temp_player.x;
path_add_point(soul_path, x, y, 60);
path_add_point(soul_path, x - (xdis * .25), y - 64, 40);
path_add_point(soul_path, x - (xdis * .5), y - 80, 80);
path_add_point(soul_path, x - (xdis * .75), y - 64, 100);
path_add_point(soul_path, x - (xdis * 1), y, 100);
path_add_point(soul_path, x - (xdis * 2), y, 100);
path_add_point(soul_path, x - (xdis * 3), y, 100);

