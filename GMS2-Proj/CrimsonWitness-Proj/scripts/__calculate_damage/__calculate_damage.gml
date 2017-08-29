///@description __calculate_damage(damageamnt, userID, targetID)
///@param damageamnt
///@param userid
///@param targetid

var dmg = argument0;

dmg += __get_target_from_id(argument1).strength;
dmg -= __get_target_from_id(argument2).resistence;

return dmg;