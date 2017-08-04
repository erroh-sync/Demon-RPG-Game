///__combat_bg__standard();
Scr_Reset3dView();
with(Obj_SceneTileRenderer)
{
    for(var i = 0; i <= 16; i += 1)
    {
        for(var j = 0; j <= 4; j += 1)
        {
            d3d_transform_set_identity();
            d3d_transform_set_scaling(8,8,8);
            // Rotate the wall if it's on the right side
            if(j == 4)
                d3d_transform_add_rotation_z(180);
            d3d_transform_add_translation(((i - 2) * 128) + 64,((j - 2.5) * 128) + 64, 0);
            //Floor
            d3d_model_draw(FloorModel,0,0,0,background_get_texture(TexAtlas));
            //Walls
            if(j == 0)
                d3d_model_draw(WallModel,0,0,0,background_get_texture(TexAtlas));
            else if(j == 4)
                d3d_model_draw(WallModel,0,0,0,background_get_texture(TexAtlas));
            d3d_transform_set_identity();
        }
    }
}
