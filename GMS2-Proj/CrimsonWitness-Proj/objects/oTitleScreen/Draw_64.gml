if(!surface_exists(surface))
	surface = surface_create(1280, 720);

// Draw the wavy version of the titlescreen.
var uTime = shader_get_uniform(sVerticalWaves,"f_Time");
var uWaveNum = shader_get_uniform(sVerticalWaves,"f_WaveNum");
var uWaveDist = shader_get_uniform(sVerticalWaves,"f_WaveDist");

shader_set(sVerticalWaves);
shader_set_uniform_f(uTime,current_time/5120);
shader_set_uniform_f(uWaveNum,20);
shader_set_uniform_f(uWaveDist,90);
draw_surface_ext(surface, 0, 0, 1.0, 1.0, 0.0, c_red, 0.35);
shader_reset();
	
// Draw the crisp title screen.
draw_surface(surface, 0, 0);