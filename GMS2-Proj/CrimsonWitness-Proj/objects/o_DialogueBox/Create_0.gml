script[0,0] = "DUMMY_DIALOGUE";
script[0,1] = "DUMMY_NAME";
script[0,2] = "DUMMY_EVENT";

scriptpos = 0;
linef = 0;
blitstring = "";

textspeed = 0.75;
activedelay = 0;

anim = -1;

x = camera_get_view_width(0)/2;
y = camera_get_view_height(0) - sprite_get_height(image_index)/2 - 16;

closing = false;