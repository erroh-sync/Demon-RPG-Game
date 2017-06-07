///Scr_Combat_FocusCamera( Target, Time)

// -3 Plays Flee Animation
// -2 Plays Entry animation
// -1 Focuses on Player
// 0+ Focuses on corresponding enemy 

// Recalculate the Roots since they usually aren't set manually   
Obj_CombatRenderer.CamRootX = lerp(Obj_CombatRenderer.CamRootX, Obj_CombatRenderer.CamTargX, Scr_SCurve(Obj_CombatRenderer.CamLerpFrame/Obj_CombatRenderer.CamLerpTime));
Obj_CombatRenderer.CamRootY = lerp(Obj_CombatRenderer.CamRootY, Obj_CombatRenderer.CamTargY, Scr_SCurve(Obj_CombatRenderer.CamLerpFrame/Obj_CombatRenderer.CamLerpTime));

if(argument0 == -3){
    Obj_CombatRenderer.CamRootX = 0;
    Obj_CombatRenderer.CamRootY = 0;
    Obj_CombatRenderer.CamTargX = -64;
    Obj_CombatRenderer.CamTargY = 0;
}
else if(argument0 == -2){
    Obj_CombatRenderer.CamRootX = -256;
    Obj_CombatRenderer.CamRootY = 0;
    Obj_CombatRenderer.CamTargX = 0;
    Obj_CombatRenderer.CamTargY = 0;
}else if(argument0 == -1){
    Obj_CombatRenderer.CamTargX = 0;
    Obj_CombatRenderer.CamTargY = 0;
}
else if(argument0 >= 0){
    var n = instance_number(Obj_EnemyData);
    var Dist = lerp(Obj_CombatRenderer.EnemyNearDrawDist, Obj_CombatRenderer.EnemyFarDrawDist, n/Obj_CombatManager.MaxNumEnemies) - 96;
    var AllSpread = lerp(0, Obj_CombatRenderer.EnemySpreadDist, (n-1)/Obj_CombatManager.MaxNumEnemies);
    var Spread = lerp(-AllSpread, AllSpread, argument0/(n-1));

    Obj_CombatRenderer.CamTargX = Dist;
    Obj_CombatRenderer.CamTargY = Spread;
}
Obj_CombatRenderer.CamLerpTime = argument1;
Obj_CombatRenderer.CamLerpFrame = 0;
