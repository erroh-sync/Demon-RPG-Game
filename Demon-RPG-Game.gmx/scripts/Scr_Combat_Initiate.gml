///Scr_Combat_Initiate();

// Spawn Enemies
// DEBUG: Spawn a random number of debug enemies
// THIS SHOULD READ FROM SOME KIND OF ENCOUNTER TABLE OBJECT

var i;
var r = irandom_range(2, 2);
for(i = 0; i < r + 1; i += 1)
{
    var j = irandom(100);
    //if(j % 2  == 0)
        instance_create(0,0, Obj_EnemyType_PrisonGuard);
    //else
        //instance_create(0,0, Obj_EnemyType_Slime);
}

instance_create(0,0, Obj_CombatManager); // Spawn the Combat Manager

// Sort the enemies so they aren't fucking everywhere (Uses data from the Combat Manager so has to be done second)
Scr_SortEnemies();
