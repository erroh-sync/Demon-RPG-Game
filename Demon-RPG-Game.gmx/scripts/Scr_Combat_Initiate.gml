///Scr_Combat_Initiate();

// Spawn Enemies
// DEBUG: Spawn a random number of debug enemies
// THIS SHOULD READ FROM SOME KIND OF ENCOUNTER TABLE OBJECT

var i;
var r = 2;
for(i = 0; i < r + 1; i += 1)
{
    if(i % 2  == 0)
        instance_create(0,0, Obj_EnemyType_Bat);
    else
        instance_create(0,0, Obj_EnemyType_Bat);
}

instance_create(0,0, Obj_CombatManager); // Spawn the Combat Manager

// Sort the enemies so they aren't fucking everywhere (Uses data from the Combat Manager so has to be done second)
Scr_SortEnemies();
