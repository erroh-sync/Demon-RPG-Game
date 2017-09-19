// Bag Position Anim
bagposition = clamp(bagposition - 0.075, 0,1);

// Bag Anim
bagframe += bagrate;

if(bagposition > 0.25){
	if(bagframe >= 2)
		bagframe = 0;
}else{
	if(bagframe >= 10)
		bagframe = 9;
}

// Tabs Anim
for(var i = 0; i < array_length_1d(tabanim); i++){
	if(curtab == i)
		tabanim[i] = lerp(tabanim[i], 1, 0.4);
	else
		tabanim[i] = lerp(tabanim[i], 0, 0.4);
}

// Tab Functions
curtab = clamp(curtab - global.input_h_down, 0, array_length_1d(tabanim)-1);
if(curtab != lasttab)
{
	lasttab = curtab;
	with(o_ItemMenu_ItemTab){instance_destroy();}
		
	switch(curtab){
		default:	instance_create_layer(x,y,"gui_layer",o_ItemMenu_ItemTab);	break;
		case 1:		instance_create_layer(x,y,"gui_layer",o_ItemMenu_RingsTab);	break;
		case 2:		instance_create_layer(x,y,"gui_layer",o_ItemMenu_KeysTab);	break;
	}
}