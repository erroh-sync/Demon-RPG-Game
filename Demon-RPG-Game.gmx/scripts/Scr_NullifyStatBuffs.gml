//Scr_NullifyStatBuffs(target)

var target;
if(argument0 == -1)
    target = Obj_PlayerData;
else{
    target = instance_find( Obj_EnemyData, argument0);
}

if(target != noone)
{
    target.ATKBoostLevel = 0;
    target.DEFBoostLevel = 0;
    target.SPDBoostLevel = 0;
}
