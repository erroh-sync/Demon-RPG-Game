///__read_loc_file(stringindex, type)
switch(argument1){
	case e_LocType.elt_charloc:
		return global.characterslocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_dialoc:
		return global.dialoguelocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_guiloc:
		return global.guilocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_itemsloc:
		return global.itemslocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_keyitemsloc:
		return global.keyitemslocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_ringsloc:
		return global.ringslocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_skillsloc:
		return global.skillslocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_itemdescloc:
		return global.itemdesclocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_keyitemdescloc:
		return global.keyitemdesclocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_ringdescloc:
		return global.ringdesclocalization[# global.currentlang, argument0];
		break;
	case e_LocType.elt_skilldescloc:
		return global.skilldesclocalization[# global.currentlang, argument0];
		break;
}