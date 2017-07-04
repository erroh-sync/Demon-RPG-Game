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
            target.ATKBoostLevel += argument0;
            break;
        }
        case StatToBuff.stb_Defense:
        {
            target.DEFBoostLevel += argument0;
            break;
        }
        case StatToBuff.stb_Speed:
        {
            target.SPDBoostLevel += argument0;
            break;
        }
        case StatToBuff.stb_All:
        {
            target.ATKBoostLevel += argument0;
            target.DEFBoostLevel += argument0;
            target.SPDBoostLevel += argument0;
            break;
        }
    }
}
