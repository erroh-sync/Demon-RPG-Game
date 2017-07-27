///Scr_Combat_Initiate();

// Spawn Enemies
// DEBUG: Spawn a random number of debug enemies
// THIS SHOULD READ FROM SOME KIND OF ENCOUNTER TABLE OBJECT

var i;
var r = irandom_range(1,3);
for(i = 0; i < r; i += 1)
{

    var j = irandom(100);
    if(j % 4  == 0)
        instance_create(0,0, Obj_EnemyType_Slime);
    else if(j % 4  == 1)
        instance_create(0,0, Obj_EnemyType_Bat);
    else if(j % 4  == 2)
        instance_create(0,0, Obj_EnemyType_CaveAnt);
    else if(j % 4  == 3)
        instance_create(0,0, Obj_EnemyType_TinyKnight);
}


//instance_create(0,0, Obj_BossEnemyType_Gargoyle);

instance_create(0,0, Obj_CombatManager); // Spawn the Combat Manager

// Sort the enemies so they aren't fucking everywhere (Uses data from the Combat Manager so has to be done second)
Scr_SortEnemies();
