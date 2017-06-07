//Scr_DetermineFirstStrike()

var playerSpeed = Obj_PlayerData.Agility;
var enemySpeed;
var FastestEnemy = -1;

var i;
for(i = 0; i < instance_number(Obj_EnemyData); i += 1)
{
    var e = instance_find(Obj_EnemyData, i);
    enemySpeed += e.Agility;
    if(instance_find(Obj_EnemyData, FastestEnemy).Agility < e.Agility || FastestEnemy == -1)
        FastestEnemy = i;
}

enemySpeed = enemySpeed/instance_number(Obj_EnemyData);

if(playerSpeed > enemySpeed)
    return -1;
else
    return FastestEnemy;
