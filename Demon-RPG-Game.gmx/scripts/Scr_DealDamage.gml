///Scr_DealDamage(Amount, DamageType, TargetIndex, UserIndex, AllowCrits)

var target;
if(argument2 == -1)
    target = Obj_PlayerData;
else{
    target = instance_find( Obj_EnemyData, argument2);
}

var user;
if(argument3 == -1)
    user = Obj_PlayerData;
else{
    user = instance_find( Obj_EnemyData, argument3);
}

var dmg = argument0;

if(dmg > 0) // Check to ensure we don't calculate weird extra stuff for healing spells
{
    dmg = (dmg + user.Strength - target.Endurance);
    if(argument4)
        dmg += Scr_CriticalCheck(argument2, argument3, false);
    if(dmg <= 0)
        dmg = 1;
}

if(target != noone)
{
    if(!target.bProtecting){
        target.HealthFlashTimer = 3.0;
        target.HealthFlashAmount = target.Hitpoints;
        target.Hitpoints = round(clamp(target.Hitpoints - dmg, 0, target.MaxHitpoints));
        
        if(argument2 > -1)
            target.TakeDamage = true;
        return true;
    }else{
        Scr_SpawnAttackEffects(argument2, Obj_ATKFX_HeartGuard); // TODO: Make this different
        return false;
    }
}
