script[0,0] = "DUMMY_DIALOGUE";
script[0,1] = "DUMMY_NAME";
script[0,2] = "DUMMY_EVENT";

scriptpos = 0;
linef = 0;
blitstring = "";
blitname = "DUMMY_NAME";

textspeed = 0.75;
activedelay = 0;
waittimer = -1;
hidden = false;

anim = -0.2;

x = 1280/2;
y = 720 - sprite_get_height(image_index)/2 - 16;

closing = false;

__event_script_interpret(script[0,2]);