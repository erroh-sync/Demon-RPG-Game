///Scr_Combat_Initiate();

// Spawn Enemies
// DEBUG: Spawn a random number of debug enemies
// THIS SHOULD READ FROM SOME KIND OF ENCOUNTER TABLE OBJECT

var i;
var r = random(5) + 1;
for(i = 0; i < r; i += 1)
{
    instance_create(0,0, Obj_EnemyData);
}

instance_create(0,0, Obj_CombatManager); // Spawn the Combat Manager
