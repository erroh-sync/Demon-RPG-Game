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
			
	        str = string_delete(str, 1, string_pos(" ", str));     
			address = string_copy(str, 1, string_pos(" ", str));
			
			ds_map_add(global.models, string(key), smf_model_load_obj(address));
			break;
		case "t ":
			key = string_copy(str, 1, string_pos(" ", str)); 
			
	        str = string_delete(str, 1, string_pos(" ", str));     
			address = string_copy(str, 1, string_pos(" ", str));
			
			show_debug_message(key);
			
			ds_map_add(global.textures, string(key), sprite_add(address,0,true,0,0,0));
			break;
	}
	
	file_text_readln(file);
}

file_text_close(file);