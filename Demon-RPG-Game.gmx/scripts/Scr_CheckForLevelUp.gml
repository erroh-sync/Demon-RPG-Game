///Scr_CheckForLevelUp()
if(Obj_PlayerData.Experience >= Scr_CalcExpToNextLevel())
{
    // Reset XP and Increment level;
    Obj_PlayerData.Experience -= Scr_CalcExpToNextLevel();
    Obj_PlayerData.Level += 1;
    
    // Level HP
    var CurrHP = Obj_PlayerData.MaxHitpoints;
    Obj_PlayerData.MaxHitpoints = round(29 + Obj_PlayerData.Level * 1.2);
    Obj_PlayerData.Hitpoints += Obj_PlayerData.MaxHitpoints - CurrHP;
    
    // Level Mana
    var CurrMP = Obj_PlayerData.MaxManapoints;
    Obj_PlayerData.MaxManapoints = round(24 + Obj_PlayerData.Level * 1.1);
    Obj_PlayerData.Manapoints += Obj_PlayerData.MaxManapoints - CurrMP;
    
    return true;
}
return false;
