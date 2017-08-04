///__combat_bg__earthboundstyle()
shader_set(__earthbound_shader);
shader_params = shader_get_uniform(__earthbound_shader, "f_Time");
shader_set_uniform_f(shader_params, global.Time/1000);
d3d_draw_wall(500,-1000,-800,500,1000,800,sprite_get_texture(RonaldFightBG,0),1,1);
shader_reset();
