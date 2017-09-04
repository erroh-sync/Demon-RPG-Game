script[0,0] = 0;
script[0,1] = 1;
script[0,2] = 2;

scriptpos = 0;
linef = 0;
blitstring = "";
bufferstring = "NULL";

textspeed = 0.75;
activedelay = 0;
waittimer = -1;
hidden = false;

// Editable Variables Via Script
fontsprite = s_MedNeolettersFont;
scrollsfx = a_FrLgDialogueScroll;
nextsfx = a_FrLgNext;

anim = -0.2;

x = 1280/2;
y = 720 - sprite_get_height(image_index)/2 - 16;

closing = false;