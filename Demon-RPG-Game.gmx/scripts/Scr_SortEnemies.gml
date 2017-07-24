///Scr_SortEnemies       
var i;
var n = instance_number(Obj_EnemyData);
if(n == 1)
{
    var inst = instance_find(Obj_EnemyData, 0);
    inst.x = Obj_CombatRenderer.EnemyNearDrawDist;
    inst.y = 0;
}
else{
    for(i = 0; i < n; i += 1)
    {
        var Dist = lerp(Obj_CombatRenderer.EnemyNearDrawDist, Obj_CombatRenderer.EnemyFarDrawDist, n/Obj_CombatManager.MaxNumEnemies);
        var AllSpread = lerp(0, Obj_CombatRenderer.EnemySpreadDist, (n-1)/Obj_CombatManager.MaxNumEnemies);
        var Spread = lerp(-AllSpread, AllSpread, i/(n-1));
        // UpdatePosition
        var inst = instance_find(Obj_EnemyData, i);
        inst.x = Dist;
        inst.y = Spread;
    }
}
