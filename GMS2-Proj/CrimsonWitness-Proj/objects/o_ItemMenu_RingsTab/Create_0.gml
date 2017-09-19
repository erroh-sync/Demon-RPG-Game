event_inherited();

// Item Declaration
menuitems = 0;

var l = maxdisp-1;
if(ds_list_size(o_PlayerInfo.rings) > l)
{
	l = ds_list_size(o_PlayerInfo.rings);
}

for(var i = 0; i < l; i++){
	if(i < ds_list_size(o_PlayerInfo.rings))
		menuitems[i,0] = o_PlayerInfo.rings[| i];
	else
		break;
}

// Draw Text From
textype = e_LocType.elt_ringsloc;

// Init the list
event_user(0);