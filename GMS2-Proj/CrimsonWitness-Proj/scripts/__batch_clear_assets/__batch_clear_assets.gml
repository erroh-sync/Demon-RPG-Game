//global.models 

var key, address;
var filename = argument0;
if !file_exists(argument0){show_debug_message("Failed to load model manifest at " + string(filename)); exit;}
show_debug_message("Loading model files from " + string(filename));

var file = file_text_open_read(filename);
while !file_text_eof(file)
{
	var str = string_replace_all(file_text_read_string(file),"  "," ");
	var type = string_copy(str, 1, 2);
	str = string_delete(str, 1, string_pos(" ", str));
	switch type
	{
		case "m ":
			key = string_copy(str, 1, string_pos(" ", str)); 			
			vertex_delete_buffer(global.models[? key]);
			break;
		case "t ":
			key = string_copy(str, 1, string_pos(" ", str)); 
			sprite_delete(global.textures[? key]);
			break;
	}
	
	file_text_readln(file);
}

ds_map_clear(global.models);
ds_map_clear(global.textures);

file_text_close(file);