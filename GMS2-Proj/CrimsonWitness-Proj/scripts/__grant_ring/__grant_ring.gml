for (var i = 0; i < ds_list_size(o_PlayerInfo.rings); i++){
	if(o_PlayerInfo.rings[| i] == argument0)
		return; // Already knew that skill
	
	else if(o_PlayerInfo.rings[| i] == 0){
		o_PlayerInfo.rings[| i] = argument0
		return;
	}
}

if(ds_list_size(o_PlayerInfo.rings) <   32) // Max Item Number
	ds_list_add(o_PlayerInfo.rings, argument0);
else
	return; // Display message saying "No More Room For Items!"