//
// Simple passthrough fragment shader

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float f_Time;
uniform float f_WaveNum;
uniform float f_WaveDist;

void main()
{
    vec2 Coord = v_vTexcoord + vec2(cos(v_vTexcoord.y* f_WaveNum+f_Time*6.2831)/f_WaveDist,0);
    vec4 OriginalColor = v_vColour * texture2D( gm_BaseTexture, Coord );
    gl_FragColor = OriginalColor;
} 