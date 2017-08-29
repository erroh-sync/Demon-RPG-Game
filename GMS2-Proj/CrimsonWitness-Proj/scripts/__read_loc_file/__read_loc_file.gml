///__read_loc_file(langslot, filename);

var key, address;
var filename = argument0;
if !file_exists(argument0){show_debug_message("Failed to load localization file at " + string(filename)); exit;}

var thingpos = 0;

var ui_p = 0;
var char_p = 0;
var skills_p = 0;
var items_p = 0;
var skilldesc_p = 0;
var itemdesc_p = 0;
var dialogue_p = 0;

var file = file_text_open_read(filename);
while !file_text_eof(file)
{
	var str = string_replace_all(file_text_read_string(file),"  "," ");
	var type = string_copy(str, 1, 2);
	str = string_delete(str, 1, string_pos(" ", str));
	switch type
	{
		default:
			break;
		case "~ ":
			global.loctextwidth[argument1] = real(str);
			break;
		// UI Text
		case "u ":		
			var pos = 0;
			while(string_char_at(str,pos) != "|" && pos <= string_length(str))
				pos++;
			
			t = string_copy(str,0,pos-1);
			if(ui_p >= ds_grid_height(global.guilocalization))
				ds_grid_resize(global.guilocalization, argument1 + 2, ds_grid_height(global.guilocalization) + 1);
			ds_grid_add(global.guilocalization, argument1, ui_p, t);
			ui_p ++;
			break;
		// Names Text
		case "n ":		
			var pos = 0;
			while(string_char_at(str,pos) != "|" && pos <= string_length(str))
				pos++;
			
			t = string_copy(str,0,pos-1);
			if(char_p >= ds_grid_height(global.characterslocalization))
				ds_grid_resize(global.characterslocalization, argument1 + 2, ds_grid_height(global.characterslocalization) + 1);
			ds_grid_add(global.characterslocalization, argument1, char_p, t);
			char_p ++;
			break;
		// Skills Text
		case "s ":		
			var pos = 0;
			while(string_char_at(str,pos) != "|" && pos <= string_length(str))
				pos++;
			
			t = string_copy(str,0,pos-1);
			if(skills_p >= ds_grid_height(global.skillslocalization))
				ds_grid_resize(global.skillslocalization, argument1 + 2, ds_grid_height(global.skillslocalization) + 1);
			ds_grid_add(global.skillslocalization, argument1, skills_p, t);
			skills_p ++;
			break;
		// Skills Description Text
		case "q ":		
			var pos = 0;
			while(string_char_at(str,pos) != "|" && pos <= string_length(str))
				pos++;
			
			t = string_copy(str,0,pos-1);
			if(skilldesc_p >= ds_grid_height(global.skilldesclocalization))
				ds_grid_resize(global.skilldesclocalization, argument1 + 2, ds_grid_height(global.skilldesclocalization) + 1);
			ds_grid_add(global.skilldesclocalization, argument1, skilldesc_p, t);
			skilldesc_p ++;
			break;
		// Items Text
		case "i ":		
			var pos = 0;
			while(string_char_at(str,pos) != "|" && pos <= string_length(str))
				pos++;
			
			t = string_copy(str,0,pos-1);
			if(items_p >= ds_grid_height(global.itemslocalization))
				ds_grid_resize(global.itemslocalization, argument1 + 2, ds_grid_height(global.itemslocalization) + 1);
			ds_grid_add(global.itemslocalization, argument1, items_p, t);
			items_p ++;
			break;
		// Items Description Text
		case "w ":		
			var pos = 0;
			while(string_char_at(str,pos) != "|" && pos <= string_length(str))
				pos++;
			
			t = string_copy(str,0,pos-1);
			if(itemdesc_p >= ds_grid_height(global.itemdesclocalization))
				ds_grid_resize(global.itemdesclocalization, argument1 + 2, ds_grid_height(global.itemdesclocalization) + 1);
			ds_grid_add(global.itemdesclocalization, argument1, itemdesc_p, t);
			itemdesc_p ++;
			break;
		// Dialogue Text
		case "d ":		
			var pos = 0;
			while(string_char_at(str,pos) != "|" && pos <= string_length(str))
				pos++;
			
			t = string_copy(str,0,pos-1);
			if(dialogue_p >= ds_grid_height(global.dialoguelocalization))
				ds_grid_resize(global.dialoguelocalization, argument1 + 2, ds_grid_height(global.dialoguelocalization) + 1);
			ds_grid_add(global.dialoguelocalization, argument1, dialogue_p, t);
			dialogue_p ++;
			break;
	}
	 
	file_text_readln(file);
}

file_text_close(file);