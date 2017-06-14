///Scr_Reset3dView();

var bDrawCombat;    
if(instance_exists(Obj_CombatManager))
{
    bDrawCombat = Obj_CombatManager.bDrawCombatScene
}else{
    bDrawCombat = false;
}

if(bDrawCombat){  
    // Render combat scene
    with(Obj_CombatRenderer)
    {
        // Set to the position of the combat camera
        d3d_set_projection_ext( CamPosX, CamPosY, 25, CamPosX + 1, CamPosY, 25, 0, 0, 1, Obj_RenderPipeline.FOV, Obj_RenderPipeline.ScreenWidth/Obj_RenderPipeline.ScreenHeight, 0.1, 1024);
    }
}else{
    // Set to the position of the camera
    with(Obj_PlayerOverworld){
        camX = x + 8;
        camY = y + 8;
        d3d_set_projection_ext( camX, camY, z, camX + cos((FaceDirection + 180) * pi/180), camY - sin((FaceDirection + 180) * pi/180), z, 0, 0, 1, Obj_RenderPipeline.FOV, Obj_RenderPipeline.ScreenWidth/Obj_RenderPipeline.ScreenHeight, 0.1, 1024);
    }
}
