for (var i = 0; i < array_length_1d(o_PlayerInfo.skills); i++){
	if(o_PlayerInfo.skills[i] == argument0)
		return 2; // Already knew that skill
	else if(o_PlayerInfo.skills[i] == 0)
		o_PlayerInfo.skills[i] = argument0
		return 0; // Learned successfully!
}

// TODO: Open menu to delete old skill