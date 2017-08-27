event_inherited();

// Item Declaration
// DUMMIES FOR NOW
for(var i = 0; i < ds_list_size(o_PlayerInfo.skills); i++){
	menuitems[i,0] = o_PlayerInfo.skills[| i];
}

// Animation
gleamframe = 0;
framerate = 0.3;

storedy = -1;
h_anims = false;