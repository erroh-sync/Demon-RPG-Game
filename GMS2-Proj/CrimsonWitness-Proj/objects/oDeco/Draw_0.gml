/// @description Draw model

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());
var mat = matrix_build(x, y, z, pitch, roll, yaw, xscl, yscl, zscl);
matrix_set(matrix_world, mat);

gpu_set_tex_repeat(true);
shader_set(sh_smf_passthrough);
smf_model_draw(model, sprite_get_texture(texture, 0));
shader_reset();

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());