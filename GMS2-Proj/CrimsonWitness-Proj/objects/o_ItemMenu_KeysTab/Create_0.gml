event_inherited();

// Item Declaration
menuitems = 0;

var l = maxdisp-1;
if(ds_list_size(o_PlayerInfo.keyitems) > l)
{
	l = ds_list_size(o_PlayerInfo.keyitems);
}

for(var i = 0; i < l; i++){
	if(i < ds_list_size(o_PlayerInfo.keyitems))
		menuitems[i,0] = o_PlayerInfo.keyitems[| i];
	else
		break;
}

// Draw Text From
textype = e_LocType.elt_keyitemsloc;

// Init the list
event_user(0);