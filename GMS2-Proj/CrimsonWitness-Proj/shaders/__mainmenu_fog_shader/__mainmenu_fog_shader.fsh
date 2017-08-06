//
// Simple passthrough fragment shader

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float f_Time;

void main()
{
    vec2 Coord = v_vTexcoord;// + vec2(cos(v_vTexcoord.y* 40.0+f_Time*6.2831)/40.0,0);
    vec4 OriginalColor = v_vColour * texture2D( gm_BaseTexture, Coord );
	OriginalColor.a = OriginalColor.a * (1.5 - (v_vTexcoord.x * 2.0));
    gl_FragColor = OriginalColor;
} 