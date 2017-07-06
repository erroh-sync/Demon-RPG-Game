///Scr_AccuracyCheck(TargetID, UserID);

var Accuracy = 80;

var TargetEvasion = 0;
if(argument0 == -1)
{
    TargetEvasion = Obj_PlayerData.SPDBoostLevel;
}else{
    TargetEvasion = instance_find(Obj_EnemyData, argument0).SPDBoostLevel;
}

var UserAccuracy = 0;
if(argument1 == -1)
{
    UserAccuracy = Obj_PlayerData.SPDBoostLevel;
}else{
    UserAccuracy = instance_find(Obj_EnemyData, argument1).SPDBoostLevel;
}

var FinalEvasion = Accuracy + (TargetEvasion - UserAcccuracy) * 10;

if(irandom(100) > FinalEvasion)
{
    if(argument0 != -1){
        instance_find(Obj_EnemyData, argument0).DodgeAnim = pi;
    }
    return false;
}
return true;
