///Scr_AccuracyCheck(TargetID, UserID);

var Accuracy = 85;

var TargetEvasion = 0;
var TargetBaseEvasion = 0;
if(argument0 == -1)
{
    TargetEvasion = Obj_PlayerData.SPDBoostLevel;
    TargetBaseEvasion = Obj_PlayerData.Agility;
}else{
    TargetEvasion = instance_find(Obj_EnemyData, argument0).SPDBoostLevel;
    TargetBaseEvasion = instance_find(Obj_EnemyData, argument0).Agility;
}

var UserAccuracy = 0;
var UserBaseAccuracy = 0;
if(argument1 == -1)
{
    UserAccuracy = Obj_PlayerData.SPDBoostLevel;
    UserBaseAccuracy = Obj_PlayerData.Agility;
}else{
    UserAccuracy = instance_find(Obj_EnemyData, argument1).SPDBoostLevel;
    UserBaseAccuracy = instance_find(Obj_EnemyData, argument0).Agility;
}

var FinalEvasion = Accuracy + (UserAccuracy - TargetEvasion) * 15 + (UserBaseAccuracy - TargetBaseEvasion);

if(irandom(100) > FinalEvasion)
{
    if(argument0 != -1){
        with(instance_find(Obj_EnemyData, argument0))
        {
            DodgeAnim = pi;
        }
        Obj_CombatRenderer.TextType = PopupTextType.ptt_Miss;
        Obj_CombatRenderer.TextAnimTimer = Obj_CombatRenderer.TextAnimTimerMax;
        Obj_CombatRenderer.TextAnim = 0;
    }
    return false;
}
return true;
