var scale = 3;
var playerWorldMatrix = matrix_build(x, y, z - collisionradius, 0, 0, 90 + movedir, scale, scale, scale);

//Draw player
shader_set(sh_smf_animate_shading);
smf_animation_set_shader_uniforms(sh_smf_animate_shading, sample);
matrix_set(matrix_world, playerWorldMatrix);
smf_model_draw(actormodel, sprite_get_texture(actortex, 0));
shader_reset();
matrix_set(matrix_world, matrix_build_identity());