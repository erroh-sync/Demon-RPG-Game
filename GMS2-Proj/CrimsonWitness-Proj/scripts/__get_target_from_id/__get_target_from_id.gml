///@description __get_target_from_id(targetid)
///@param targetid

if(argument0 >= 0){
	return instance_find(o_Enemy, argument0);
}else{
	return o_PlayerInfo;
}