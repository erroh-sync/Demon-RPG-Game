//Scr_SpawnAttackEffects(Target, EffectObject);
if(argument0 >= 0)
    instance_create(instance_find(Obj_EnemyData,argument0).x, instance_find(Obj_EnemyData,argument0).y, argument1);
else
    instance_create(Obj_CombatRenderer.CamPosX, instance_find(Obj_EnemyData,argument0).CamPosY, argument1);
