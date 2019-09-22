//swing the weapon
if (!swing_cd && control_enabled) {
	var swing = instance_create_layer(x + 64, y + 96, "Instances", obj_weapon);
	swing.swing_speed = swing_speed;
	swing.swing_direction = current_direction;
	swing.impact_delay = swing_impact_delay;
	swing.swing_damage = swing_damage;
	swing_cd = true;
}