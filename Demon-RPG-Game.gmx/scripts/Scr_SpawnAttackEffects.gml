//Scr_SpawnAttackEffects(Target, EffectObject);

var FX = noone;
if(argument0 >= 0)
    FX = instance_create(instance_find(Obj_EnemyData,argument0).x - 64, instance_find(Obj_EnemyData,argument0).y, argument1);
else
    FX = instance_create(Obj_CombatRenderer.CamPosX + 64, Obj_CombatRenderer.CamPosY, argument1);
    
FX.Target = argument0;
