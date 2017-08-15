if(!instance_exists(o_DialogueBox) && (directionmatch == false || (directionmatch == true  && o_PlayerOverworld.facedir == image_angle)))
{
	instance_create_layer(0,0,"gui_layer",o_DialogueBox);
	o_DialogueBox.script = script;
	__event_script_interpret(o_DialogueBox.script[0,2]);
}