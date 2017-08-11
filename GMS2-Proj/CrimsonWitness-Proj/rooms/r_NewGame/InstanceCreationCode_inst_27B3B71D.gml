hidden = true;
waittimer = 100;
script[0,0] = ""; // Narrator Appears
script[0,1] = "";
script[0,2] = "$_locflag: 000t  $____wait: 050";
script[1,0] = ""; // Narrator Begins Talk Anim
script[1,1] = "";
script[1,2] = "$_locflag: 001t $____wait: 020";

// Intro dialogue
if(current_hour <= 10 && current_hour >= 5)
	script[2,0] = "Good morning to thee, waking traveller!";
else if(current_hour <= 3 && current_hour > 10)
	script[2,0] = "Good day to thee!";
else
	script[2,0] = "Good evening to thee, weary traveller!";
script[2,1] = "Scribe";
script[2,2] = "$togghide__";

script[3,0] = "I am #c255255000Scribe#c255255255,#d030 your humble narrator!";
script[3,1] = "Scribe";
script[3,2] = "";

script[4,0] = "The world in which you are about to enter is one full#/of great peril.";
script[4,1] = "Scribe";
script[4,2] = "";

script[5,0] = "With dangerous beasts and foes alike lurking at every turn!";
script[5,1] = "Scribe";
script[5,2] = "";

script[6,0] = "...";
script[6,1] = "Scribe";
script[6,2] = "";

script[7,0] = "Erm...sorry, did I say you?";
script[7,1] = "Scribe";
script[7,2] = "";

script[8,0] = ""; // Narrator jumps to the side to reveal the player character
script[8,1] = "";
script[8,2] = "$togghide__ $____wait: 100";

script[9,0] = "I meant this poor creature here.";
script[9,1] = "Scribe";
script[9,2] = "$togghide__";

script[10,0] = "They've gotten themselves into a pretty sticky situation!";
script[10,1] = "Scribe";
script[10,2] = "";

script[11,0] = "Hmm...why don't we give them a name? Any ideas?";
script[11,1] = "Scribe";
script[11,2] = "";

script[12,0] = "";
script[12,1] = "";
script[12,2] = "$uicreate: " + string_format(asset_get_index("o_NameingBox"),4,0);// + " $diaclose";

// Create naming object here