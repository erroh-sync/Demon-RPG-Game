for (var i = 0; i < ds_list_size(o_PlayerInfo.skills); i++){
	if(o_PlayerInfo.skills[| i] == argument0)
		return; // Already knew that skill
	else if(o_PlayerInfo.skills[| i] == 0){
		o_PlayerInfo.skills[| i] = argument0
		return;
	}
}

if(ds_list_size(o_PlayerInfo.skills) < 8) // Max Skill Number
	ds_list_add(o_PlayerInfo.skills, argument0);
else
	return; // Should open a menu to delete skills here