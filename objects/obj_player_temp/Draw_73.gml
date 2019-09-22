//if glowing, activate the shader
if (glow) {
	shader_set(sh_glow_white);
	var glow_dist = shader_get_uniform(sh_glow_white, "v_glowStr");
	shader_set_uniform_f(glow_dist, glow_str / 100);
	draw_self();
	shader_reset();
}
else {
	draw_self();
}