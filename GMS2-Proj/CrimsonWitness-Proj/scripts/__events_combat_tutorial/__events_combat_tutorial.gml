// Init the events
if(event_state == "NULL")
	event_state = "start";

// Temporary Script Variable
var t_script;

switch(event_state){
	case "start":
		// Set the script
		t_script[0,0] = 11;
		t_script[0,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[0,2] = "";
		t_script[1,0] = 12;
		t_script[1,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[1,2] = "";
		t_script[2,0] = 13;
		t_script[2,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[2,2] = "";
		t_script[3,0] = 14;
		t_script[3,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[3,2] = "";
		
		// Create the dialogue box
		// TODO: Use a different class for this. Should be a more speech bubble looking one.
		instance_create_layer(0,0,"gui_layer",o_DialogueBox);
		o_DialogueBox.script = t_script;
		
		// Advance State
		event_state = "start_atk";
		
		break;
	case "start_atk":
		// Set the script
		t_script[0,0] = 15;
		t_script[0,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[0,2] = "";
		t_script[1,0] = 16;
		t_script[1,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[1,2] = "";
		t_script[2,0] = 17;
		t_script[2,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[2,2] = "";
		t_script[3,0] = 18;
		t_script[3,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[3,2] = "";
		
		// Create the dialogue box
		// TODO: Use a different class for this. Should be a more speech bubble looking one.
		instance_create_layer(0,0,"gui_layer",o_DialogueBox);
		o_DialogueBox.script = t_script;
		
		break;
	case "ring":
		// Set the script
		t_script[0,0] = 19;
		t_script[0,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[0,2] = "";
		t_script[1,0] = 20;
		t_script[1,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[1,2] = "";
		t_script[2,0] = 21;
		t_script[2,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[2,2] = "";
		t_script[3,0] = 22;
		t_script[3,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[3,2] = "";
		t_script[4,0] = 23;
		t_script[4,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[4,2] = "$___grant: r0001   ";
		
		// Create the dialogue box
		// TODO: Use a different class for this. Should be a more speech bubble looking one.
		instance_create_layer(0,0,"gui_layer",o_DialogueBox);
		o_DialogueBox.script = t_script;
		
		// Advance State
		event_state = "ring_wait";
		
		break;
	case "ring_wait":
		// Set the script
		t_script[0,0] = 24;
		t_script[0,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[0,2] = "";
		t_script[1,0] = 25;
		t_script[1,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[1,2] = "";
		
		// Create the dialogue box
		// TODO: Use a different class for this. Should be a more speech bubble looking one.
		instance_create_layer(0,0,"gui_layer",o_DialogueBox);
		o_DialogueBox.script = t_script;
		
		break;
	case "ring_miss":
		// Set the script
		t_script[0,0] = 26;
		t_script[0,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[0,2] = "";
		t_script[1,0] = 27;
		t_script[1,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[1,2] = "";
		t_script[2,0] = 28;
		t_script[2,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[2,2] = "";
		
		// Create the dialogue box
		// TODO: Use a different class for this. Should be a more speech bubble looking one.
		instance_create_layer(0,0,"gui_layer",o_DialogueBox);
		o_DialogueBox.script = t_script;
	
		// Advance State
		event_state = "ring_wait";
		break;
	case "talk":
		// Set the script
		t_script[0,0] = 29;
		t_script[0,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[0,2] = "";
		t_script[1,0] = 30;
		t_script[1,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[1,2] = "";
		t_script[2,0] = 31;
		t_script[2,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[2,2] = "";
		t_script[3,0] = 32;
		t_script[3,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[3,2] = "";
		t_script[4,0] = 33;
		t_script[4,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[4,2] = "";
		t_script[5,0] = 34;
		t_script[5,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[5,2] = "";
		t_script[6,0] = 35;
		t_script[6,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[6,2] = "";
		t_script[7,0] = 36;
		t_script[7,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[7,2] = "";
		t_script[8,0] = 37;
		t_script[8,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[8,2] = "";
		t_script[9,0] = 39;
		t_script[9,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[9,2] = "";
		t_script[10,0] = 40;
		t_script[10,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[10,2] = "";
		t_script[11,0] = 41;
		t_script[11,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[11,2] = "$___grant: s0002   ";
		t_script[12,0] = 42;
		t_script[12,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[12,2] = "";
		
		// Create the dialogue box
		// TODO: Use a different class for this. Should be a more speech bubble looking one.
		instance_create_layer(0,0,"gui_layer",o_DialogueBox);
		o_DialogueBox.script = t_script;
	
		// Advance State
		event_state = "talk_wait";
		break;
	case "talk_wait":
		// Set the script
		t_script[0,0] = 43;
		t_script[0,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[0,2] = "";
		t_script[1,0] = 44;
		t_script[1,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[1,2] = "";
		t_script[2,0] = 45;
		t_script[2,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[2,2] = "";
		// Create the dialogue box
		// TODO: Use a different class for this. Should be a more speech bubble looking one.
		instance_create_layer(0,0,"gui_layer",o_DialogueBox);
		o_DialogueBox.script = t_script;
		
		break;
	case "talk_miss":
		// Set the script
		t_script[0,0] = 46;
		t_script[0,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[0,2] = "";
		t_script[1,0] = 47;
		t_script[1,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[1,2] = "";
		t_script[2,0] = 48;
		t_script[2,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[2,2] = "";
		t_script[3,0] = 49;
		t_script[3,1] = "Fairy"; //TODO: Replace this with a numerical lookup
		t_script[3,2] = "";
		// Create the dialogue box
		// TODO: Use a different class for this. Should be a more speech bubble looking one.
		instance_create_layer(0,0,"gui_layer",o_DialogueBox);
		o_DialogueBox.script = t_script;
		
		// Advance State
		event_state = "talk_wait";
		break;
	default:
		break;
}