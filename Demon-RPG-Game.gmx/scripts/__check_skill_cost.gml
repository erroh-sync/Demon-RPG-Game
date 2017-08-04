///__check_skill_cost(cost);
if(argument0 > 0 && argument0 > Obj_PlayerData.Manapoints){
    Obj_PlayerStatsHUD.MPLowFlashTimer = 8 * pi;
    return false;
}else if(argument0 < 0 && abs(argument0) >= Obj_PlayerData.Hitpoints){
    Obj_PlayerStatsHUD.HPLowFlashTimer = 8 * pi;
    return false;
}else
    return true;
