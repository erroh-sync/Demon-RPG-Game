event_inherited();

// Functionality
__combat_main_menu();

// Color fade
if(selecteditem_y >= 0 && hasfocus){
	global.menucol = merge_color(global.menucol, colvals[selecteditem_x],0.2);
}

if(o_CombatMenuTargetting.hasfocus)
	infobar_focus = 1 - focusanim;
else
	infobar_focus = lerp(infobar_focus, 1.0, 0.1);