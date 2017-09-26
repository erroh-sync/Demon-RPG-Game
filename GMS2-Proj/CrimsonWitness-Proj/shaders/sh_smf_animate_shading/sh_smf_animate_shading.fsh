//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying float v_vShading;

void main()
{
    gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.rgb *= v_vShading;
}



