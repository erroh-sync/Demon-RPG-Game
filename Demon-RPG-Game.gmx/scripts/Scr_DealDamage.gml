///Scr_DealDamage(Amount, DamageType, TargetIndex)

var target;
if(argument2 == -1)
    target = Obj_PlayerData;
else{
    target = instance_find( Obj_EnemyData, argument2);
}

var dmg = argument0;

if(target != noone)
{
    // TODO: DAMAGE CALC HERE
    target.HealthFlashTimer = 3.0;
    target.HealthFlashAmount = target.Hitpoints;
    target.Hitpoints -= dmg;
    
    if(argument2 > -1)
        target.TakeDamage = true;
}
