uniform float v_glowStr;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	float x, y, z;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	x = gl_FragColor.x + v_glowStr;
	y = gl_FragColor.y + v_glowStr;
	z = gl_FragColor.z + v_glowStr;
	if (x < 0.0) {
		x = 0.0;
	}
	if (y < 0.0) {
		y = 0.0;
	}
	if (z < 0.0) {
		z = 0.0;
	}
	
	gl_FragColor = vec4(x, y, z, gl_FragColor.a);
}
