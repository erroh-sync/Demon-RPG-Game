/// @description Draw level model
gpu_set_tex_repeat(true);
shader_set(sh_smf_passthrough);
matrix_set(matrix_world, matrix_build_identity());
var mat = matrix_build(x, y, 0, 90, 0, image_angle, image_xscale, image_yscale, 1);
matrix_set(matrix_world,mat);
smf_model_draw(global.models[? mdlkey], sprite_get_texture(sprite_index, image_index));
matrix_set(matrix_world, matrix_build_identity());
shader_reset();