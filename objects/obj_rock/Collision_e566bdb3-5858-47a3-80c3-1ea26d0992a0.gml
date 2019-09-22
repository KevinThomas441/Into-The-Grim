if (instance_exists(obj_player)) {
	if(x<obj_player.x+32 && x>obj_player.x-32 && y < obj_player.y+32 && obj_player.y-32)
	{
		take_damage(obj_player, 1);
		obj_player.flash = 3;
	}
}
instance_destroy();
