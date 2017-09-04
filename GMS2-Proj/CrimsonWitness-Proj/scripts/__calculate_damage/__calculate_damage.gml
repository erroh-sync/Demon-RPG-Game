///@description __calculate_damage(damageamnt, userID, targetID)
///@param damageamnt
///@param userid
///@param targetid

var dmg = argument0;

dmg += __get_target_from_id(argument1).strength;
dmg -= __get_target_from_id(argument2).resistence;
dmg *= random_range(0.8, 1.2);

dmg = round(dmg);

if(dmg <= 0){dmg = 1;}

return dmg;