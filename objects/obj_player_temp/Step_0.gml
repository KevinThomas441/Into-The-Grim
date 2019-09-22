//if glow_str is higher than 0, light up, delay, then slowly fade out
if (glow_str > 0) {
	glow = true;
	if (glow_delay > 0) {
		glow_delay--;
	}
	else {
		glow_str--;
		if (glow_str <= 0) {
			glow_str = 0;
			glow = false;
			bg_reference.glow_done = true;
		}
	}
}