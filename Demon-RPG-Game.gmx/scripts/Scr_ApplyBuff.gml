///Scr_ApplyBuff(Amount, Stat, TargetIndex)

var target;
if(argument2 == -1)
    target = Obj_PlayerData;
else{
    target = instance_find( Obj_EnemyData, argument2);
}

var dmg = argument0;

if(target != noone)
{
    switch(argument1)
    {
        case StatToBuff.stb_Attack:
        {
            target.ATKBoostLevel = clamp(target.ATKBoostLevel + argument0, -3, 3);
            if(target.ATKBoostLevel >= 3 || target.ATKBoostLevel <= -3)
                return false;
            break;
        }
        case StatToBuff.stb_Defense:
        {
            target.DEFBoostLevel = clamp(target.DEFBoostLevel + argument0, -3, 3);
            if(target.DEFBoostLevel >= 3 || target.DEFBoostLevel <= -3)
                return false;
            break;
        }
        case StatToBuff.stb_Speed:
        {
            target.SPDBoostLevel = clamp(target.SPDBoostLevel + argument0, -3, 3);
            if(target.SPDBoostLevel >= 3 || target.SPDBoostLevel <= -3)
                return false;
            break;
        }
        case StatToBuff.stb_All:
        {
            target.ATKBoostLevel = clamp(target.ATKBoostLevel + argument0, -3, 3);
            target.DEFBoostLevel = clamp(target.DEFBoostLevel + argument0, -3, 3);
            target.SPDBoostLevel = clamp(target.SPDBoostLevel + argument0, -3, 3);
            if((target.ATKBoostLevel >= 3 && target.DEFBoostLevel >= 3 && target.SPDBoostLevel >= 3 ) || (target.ATKBoostLevel <= -3 && target.DEFBoostLevel <= -3 && target.SPDBoostLevel <= -3))
                return false;
            break;
        }
    }
    return true;
}
