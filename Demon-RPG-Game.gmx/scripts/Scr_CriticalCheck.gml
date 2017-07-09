///Scr_CriticalCheck(TargetID, UserID, AutoCrit?);

var BaseCrit = 10;

var TargetLuck = 0;
if(argument0 == -1)
{
    TargetLuck = Obj_PlayerData.Luck;
}else{
    TargetLuck = instance_find(Obj_EnemyData, argument0).Luck;
}

var UserLuck = 0;
if(argument1 == -1)
{
    UserLuck = Obj_PlayerData.Luck;
}else{
    UserLuck = instance_find(Obj_EnemyData, argument1).Luck;
}

var FinalCritChance = BaseCrit + (UserLuck - TargetLuck);

show_debug_message(FinalCritChance);

if(irandom(100) < FinalCritChance || argument2 == true)
{
    if(argument0 != -1){
        Obj_CombatRenderer.TextType = PopupTextType.ptt_Critical;
        Obj_CombatRenderer.TextAnimTimer = Obj_CombatRenderer.TextAnimTimerMax;
        Obj_CombatRenderer.TextAnim = 0;
    }
    return 1.5;
}
return 1;
