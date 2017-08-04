///__initiate_combat(encounter_table);

instance_create(0,0, Obj_CombatManager); // Spawn the Combat Manager

switch(argument0){
    case 0: // PRISON: Area 01
    {
        var r = irandom_range(1,2);
        for(var i = 0; i < r; i += 1)
        {
            var j = irandom(100);
            if(j % 10 < 5 )
                instance_create(0,0, Obj_EnemyType_Slime);
            else if(j % 10 < 7 )
                instance_create(0,0, Obj_EnemyType_Bat);
            else
                instance_create(0,0, Obj_EnemyType_TinyKnight);
        }
        Obj_CombatRenderer.combat_scene_script = __combat_bg__standard;
        break;
    }
    case 1: // PRISON: Slime Horde
    {
        instance_create(0,0, Obj_EnemyType_Slime);
        instance_create(0,0, Obj_EnemyType_Slime);
        instance_create(0,0, Obj_EnemyType_Slime);
        instance_create(0,0, Obj_EnemyType_Slime);
        instance_create(0,0, Obj_EnemyType_Slime);
                Obj_CombatRenderer.combat_scene_script = __combat_bg__standard;
        break;
    }
    case 2: // PRISON: Gargoyle Boss
    {
        instance_create(0,0, Obj_BossEnemyType_Gargoyle);
        Obj_CombatManager.BattleTheme = mus_battle_miniboss;
        Obj_CombatRenderer.combat_scene_script = __combat_bg__standard;
        Obj_CombatManager.bCanFlee = false;
        break;
    }
    case 3: // DONALD MCDONALD
    {
        instance_create(0,0, Obj_HyperBossEnemyType_Ronald);
        Obj_CombatManager.BattleTheme = mus_battle_ronald;
        Obj_CombatRenderer.combat_scene_script = __combat_bg__earthboundstyle;
        Obj_CombatManager.bCanFlee = false;
        break;
    }
    case 4: // PRISON: Knight Area
    {
        var r = irandom_range(1,2);
        for(var i = 0; i < r; i += 1)
        {
            var j = irandom(100);
            if(j % 10 < 2 )
                instance_create(0,0, Obj_EnemyType_Slime);
            else if(j % 10 < 3 )
                instance_create(0,0, Obj_EnemyType_Bat);
            else
                instance_create(0,0, Obj_EnemyType_TinyKnight);
        }
        Obj_CombatRenderer.combat_scene_script = __combat_bg__standard;
        break;
    }
    case 5: // PRISON: 2nd Area
    {
        var r = irandom_range(1,3);
        for(var i = 0; i < r; i += 1)
        {
            var j = irandom(100);
            if(j % 10 < 3 )
                instance_create(0,0, Obj_EnemyType_Slime);
            else if(j % 10 < 7 )
                instance_create(0,0, Obj_EnemyType_Bat);
            else if(j % 10 < 8 )
                instance_create(0,0, Obj_EnemyType_TinyKnight);
            else
                instance_create(0,0, Obj_EnemyType_CaveAnt);
        }
        Obj_CombatRenderer.combat_scene_script = __combat_bg__standard;
        break;
    }
    case 6: // PRISON: Tutorial Fight
    {   
        instance_create(0,0, Obj_EnemyType_Slime);
        Obj_CombatRenderer.combat_scene_script = __combat_bg__standard;
        Obj_CombatManager.bCanFlee = false;
        break;
    }
}

Scr_SortEnemies();
