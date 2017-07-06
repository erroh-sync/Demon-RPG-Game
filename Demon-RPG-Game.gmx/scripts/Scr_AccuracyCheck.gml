///Scr_AccuracyCheck(TargetID, UserID);

var Accuracy = 75;

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

var FinalEvasion = Accuracy + (UserAccuracy - TargetEvasion) * 15;

if(irandom(100) > FinalEvasion)
{
    if(argument0 != -1){
        with(instance_find(Obj_EnemyData, argument0))
        {
            DodgeAnim = pi;
        }
    }
    return false;
}
return true;
