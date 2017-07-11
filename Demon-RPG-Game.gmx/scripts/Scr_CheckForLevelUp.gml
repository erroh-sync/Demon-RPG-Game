///Scr_CheckForLevelUp()
if(Obj_PlayerData.Experience >= Scr_CalcExpToNextLevel())
{
    Obj_PlayerData.Experience -= Scr_CalcExpToNextLevel();
    Obj_PlayerData.Level += 1;
    return true;
}
return false;
