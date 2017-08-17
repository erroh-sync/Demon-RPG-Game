///__read_loc_file(langslot, filename);

var key, address;
var filename = argument0;
if !file_exists(argument0){show_debug_message("Failed to load localization file at " + string(filename)); exit;}
show_debug_message("Loading text from " + string(filename));

var thingpos = 0;

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
			show_debug_message(str);
			global.loctextwidth[argument1] = real(str);
			break;
		case "t ":		
			var pos = 0;
			while(string_char_at(str,pos) != "|" && pos <= string_length(str))
				pos++;
			
			t = string_copy(str,0,pos-1);
			if(thingpos >= ds_grid_height(global.localization))
				ds_grid_resize(global.localization, argument1 + 2, ds_grid_height(global.localization) + 1);
			ds_grid_add(global.localization, argument1, thingpos, t);
			thingpos ++
			break;
	}
	
	file_text_readln(file);
}

file_text_close(file);