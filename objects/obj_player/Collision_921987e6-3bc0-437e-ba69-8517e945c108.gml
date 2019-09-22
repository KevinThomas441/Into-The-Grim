//if the enemy is out of health, don't take damage
if (!other.is_dead) {
	take_damage(self, 1);
}