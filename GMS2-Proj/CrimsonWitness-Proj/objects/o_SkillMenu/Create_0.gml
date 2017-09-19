event_inherited();

// Item Declaration
menuitems = 0;

var l = maxdisp-2;
if(ds_list_size(o_PlayerInfo.skills) > l)
{
	l = ds_list_size(o_PlayerInfo.skills);
}

for(var i = 0; i < l; i++){
	if(i < ds_list_size(o_PlayerInfo.skills))
		menuitems[i,0] = o_PlayerInfo.skills[| i];
	else
		menuitems[i,0] = 0;
}

// Scrolling List Poperties
topdisp = 0;
maxdisp = 2;
displayitems = 0;

// Init the list
event_user(0);

// Anim
fireframe = 0;
firerate = 0.14;
fireanim = 1;