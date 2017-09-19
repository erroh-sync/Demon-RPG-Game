for (var i = 0; i < ds_list_size(o_PlayerInfo.items); i++){
	/*
	Ignore this since we DO want duplicate items
	if(o_PlayerInfo.items[| i] == argument0)
		return; // Already knew that skill
	
	else*/ if(o_PlayerInfo.items[| i] == 0){
		o_PlayerInfo.items[| i] = argument0
		return;
	}
}

if(ds_list_size(o_PlayerInfo.items) <   32) // Max Item Number
	ds_list_add(o_PlayerInfo.items, argument0);
else
	return; // Display message saying "No More Room For Items!"