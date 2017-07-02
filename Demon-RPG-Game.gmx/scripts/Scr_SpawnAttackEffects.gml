//Scr_SpawnAttackEffects(Target, EffectObject);
if(argument0 >= 0)
    instance_create(instance_find(Obj_EnemyData,argument0).x, instance_find(Obj_EnemyData,argument0).y, argument1);
else
    instance_create(Obj_CombatRenderer.CamPosX +  64, Obj_CombatRenderer.CamPosY, argument1);
