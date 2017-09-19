for (var i = 0; i < ds_list_size(o_PlayerInfo.keyitems); i++){
	if(o_PlayerInfo.keyitems[| i] == argument0)
		return; // Already knew that skill
	
	else if(o_PlayerInfo.keyitems[| i] == 0){
		o_PlayerInfo.keyitems[| i] = argument0
		return;
	}
}

if(ds_list_size(o_PlayerInfo.keyitems) < 32) // Max Item Number
	ds_list_add(o_PlayerInfo.keyitems, argument0);
else
	return; // Display message saying "No More Room For Items!"