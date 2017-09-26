gpu_set_zwriteenable(false);
draw_set_color(c_white);
gpu_set_tex_repeat(true);
shader_set(sh_smf_passthrough);
matrix_set(matrix_world, matrix_build_identity());
var mat = matrix_build(x, y, 32, 90, 0, image_angle + 180, image_xscale, image_yscale, 1);
matrix_set(matrix_world,mat);
if(!surface_exists(texsurf))
	texsurf = surface_create(dimension,dimension);
//smf_model_draw(global.models[? "billboard "], surface_get_texture(texsurf));
matrix_set(matrix_world, matrix_build_identity());
shader_reset();
gpu_set_zwriteenable(true);