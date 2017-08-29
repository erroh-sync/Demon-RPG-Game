/// @description Move Effects/Calculations Here

var e = __get_target_from_id(targetindex);

var dmg = __calculate_damage(basedmg,userindex,targetindex);

e.hitpoints -= dmg;

var t = instance_create_layer(ss_xloc, ss_yloc, "gui_layer", o_DamageText);
t.dmgamnt = dmg;