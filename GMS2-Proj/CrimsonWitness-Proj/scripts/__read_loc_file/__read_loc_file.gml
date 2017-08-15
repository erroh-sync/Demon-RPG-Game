///__read_loc_file(langslot, filename);

var key, address;
var filename = argument0;
if !file_exists(argument0){show_debug_message("Failed to load localization file at " + string(filename)); exit;}
show_debug_message("Loading text from " + string(filename));

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
		case "t ":		
			var t = str;
			show_debug_message(t);
			ds_grid_add(global.localization, argument1, ds_grid_height(global.localization) - 1, t);
			ds_grid_resize(global.localization, ds_grid_width(global.localization), ds_grid_height(global.localization) + 1);
			break;
	}
	
	file_text_readln(file);
}

file_text_close(file);