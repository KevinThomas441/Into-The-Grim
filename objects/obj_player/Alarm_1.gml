//flash on hit
iframe_hit--;

if (iframe_hit > 0) {
	alarm[1] = 8;
	if (image_alpha == 1) {
		image_alpha = 0;
	}
	else {
		image_alpha = 1;
	}
}
else {
	image_alpha = 1;
}