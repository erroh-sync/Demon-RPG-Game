/// @description Apply the shader here
var usize = shader_get_uniform(sBloom,"blurSize");
var uintensity = shader_get_uniform(sBloom,"intensity");

shader_set(sBloom);
shader_set_uniform_f(usize, 80);
shader_set_uniform_f(uintensity, 0.8);
draw_surface(application_surface, 0, 0);
shader_reset(); 