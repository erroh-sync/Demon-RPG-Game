event_inherited();

depth -= 6;

// Item Declaration
menuitems = 0;

var l = maxdisp-1;
if(ds_list_size(o_PlayerInfo.items) > l)
{
	l = ds_list_size(o_PlayerInfo.items);
}

for(var i = 0; i < l; i++){
	if(i < ds_list_size(o_PlayerInfo.items))
		menuitems[i,0] = o_PlayerInfo.items[| i];
	else
		break;
}

// Scrolling List Poperties
topdisp = 0;
maxdisp = 5;

// Draw Text From
textype = e_LocType.elt_itemsloc;

// Init the list
event_user(0);