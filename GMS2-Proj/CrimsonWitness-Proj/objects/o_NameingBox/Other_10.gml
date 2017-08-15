instance_create_layer(0,0,"gui_layer", o_DialogueBox)

with(o_DialogueBox){
	anim = 2;// So that it appears right over the top
	
	// Speedrunner trap
	if(string_length(global.p_name) == 1){
		global.p_name = global.p_name+ "#p005" + global.p_name + global.p_name + global.p_name + global.p_name + global.p_name + global.p_name + global.p_name + "#p100";
		script[0,0] = "Haha, did you think you could save precious frames? You dirty#/Speedrunner! Have fun being named #q ;)";
	}
	// Switch to handle unique name responses. Add to this list over time as you get more ideas
	else{
		switch(string_lower(global.p_name)){
			// Crimson Witness Related
			case "penn":	script[0,0] = "Oh? #q? What a coincidence, I was thinking the same thing!"; break; 
			case "crimson":	script[0,0] = "Hmm, topical? Considering that's part of the name of our tale!"; break; 
			case "witness":	script[0,0] = "Hmm, topical? Considering that's part of the name of our tale!#d100 #/#/#/#s010This is not the Witness you're looking for however."; break; 
			case "":		global.p_name = "Penn"
							script[0,0] = "Don't have any ideas? Alright, let's go with...#q? #q works!"; break;
			// Indie game related
			case "frisk":	script[0,0] = "Seems fitting, looks like #q has had a bad time!"; break; 
			case "chara":	global.p_name = "Frisk"
							script[0,0] = "Hmm? You mean #q right? That fits better."; break; 
			case "keu":		script[0,0] = "Ahh, #q! A name fit for exploring the heptaverse!"; break; 
			case "patina":	script[0,0] = "They do look like the artsy type. #q fits nicely!"; break; 
			case "jiro":	script[0,0] = "Idk enough about Blue Omen yet to write a joke lol"; break; //TODO: Change??
			case "yagiko":	script[0,0] = "Idk enough about Blue Omen yet to write a joke lol"; break; //TODO: Change??
			// Meme related
			case "obama":	script[0,0] = "Ahh, looks like things have taken a turn for the worst for#/ #q in recent years..."; break; 
			case "pepsi":	global.p_name = "Bepsi"
							script[0,0] = "Ok! #q it is!"; break;
			case "coke":	global.p_name = "Conke"
							script[0,0] = "Ok! #q it is!"; break;
			case "bart":	script[0,0] = "Aye carumba! Cowabunga! Other assorted catchphrases, #q!!"; break; 
			// Censoring rude names

			default:		script[0,0] = "Hmm, #q! Works for me.#/Has a nice ring to it."; break;
		}
	}
	script[0,1] = "Scribe";
	script[0,2] = "$____wait: 050";
	
	// Back to the script
	script[1,0] = "Now, where was I...Oh yes!";
	script[1,1] = "Scribe";
	script[1,2] = "";
	
	script[2,0] = "";
	script[2,1] = "";
	script[2,2] = "$____wait: 050 $togghide__"; // Scribe pulls out his tome and quill, smacking the MC in the face as he does
	
	script[3,0] = "...Oops.";
	script[3,1] = "Scribe";
	script[3,2] = "$togghide__";
	
	script[4,0] = "Umm...anyways. Our story begins here, in the dungeons#/of #c255255000Castle Sanguine#c255255255.";
	script[4,1] = "Scribe";
	script[4,2] = "";
	
	script[5,0] = "It is here, that our...er...mighty hero, #q, is held captive#/by the #c159050062Cardinal Crusade#c255255255 for crimes 'Against Their Cause'.";
	script[5,1] = "Scribe";
	script[5,2] = "";
	
	script[6,0] = "What plights await our dearest #q? Let's find out!";
	script[6,1] = "Scribe";
	script[6,2] = "";
	
	script[7,0] = "";
	script[7,1] = "";
	script[7,2] = "$roomgoto: " + string_format(asset_get_index("r_PrisonEntry"),4,0) + ",0064,0048,090";
}

instance_destroy();