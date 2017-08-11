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
				script[0,0] = "Don't have any ideas? Alright, let's go with...#q?#/#q works!"; break;
			// Indie game related
			case "frisk":	script[0,0] = "Seems fitting, looks like #q has had a bad time!"; break; 
			case "chara":	global.p_name = "Frisk"
							script[0,0] = "Hmm? You mean #q right? That fits better."; break; 
			case "keu":		script[0,0] = "Ahh, #q! A name fit for exploring the heptaverse!"; break; 
			case "patina":	script[0,0] = "They do look like the artsy type. #q fits nicely!"; break; 
			case "bart":	script[0,0] = "Aye carumba! Cowabunga! Other assorted catchphrases, #q!!"; break; 
			case "jiro":	script[0,0] = "Idk enough about Blue Omen yet to write a joke lol"; break; //TODO: Change??
			case "yagiko":	script[0,0] = "Idk enough about Blue Omen yet to write a joke lol"; break; //TODO: Change??
			// Meme related
			case "obama":	script[0,0] = "Ahh, looks like things have taken a turn for the worst for#/ #q in recent years..."; break; 
			case "pepsi":	global.p_name = "Bepsi"
							script[0,0] = "Ok! #q it is!"; break;
			case "coke":	global.p_name = "Conke"
							script[0,0] = "Ok! #q it is!"; break;
			// Censoring rude names
			case "nigga":	global.p_name = "NiBBa"
							script[0,0] = "My #q it is then!"; break;
			case "nigger":	global.p_name = "NiBBa"
							script[0,0] = "My #q it is then!"; break;
			case "nibba":	script[0,0] = "My #q! Alright!"; break;
			case "shit":	global.p_name = "poob"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			case "poo":		global.p_name = "poob"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			case "poop":	global.p_name = "poob"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			case "fuck":	global.p_name = "frick"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			case "pussy":	global.p_name = "Cat"
							script[0,0] = "Correct! They are a #q!"; break;
			case "vagina":	global.p_name = "Fanny"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			case "cunt":	global.p_name = "Fanny"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			case "penis":	global.p_name = "Willy"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			case "dick":	global.p_name = "Willy"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			case "cock":	global.p_name = "Willy"
							script[0,0] = "Wha-!? That's just toilet language! No we'll call them#/#q thankyouverymuch!"; break;
			default:		script[0,0] = "Hmm, #q! Works for me.#/Has a nice ring to it."; break;
		}
	}
	script[0,1] = "Scribe";
	script[0,2] = "____wait: 050";
}

instance_destroy();