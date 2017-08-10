event_inherited();

for(var i = 0; i < 26; i++){
	menuitems[0,i] = chr(i + 65);
	menuitems[1,i] = chr(i + 97);
}
for(var i = 0; i < 10; i++){
	menuitems[2,i] = chr(i + 48);
}

menuitems[3,0] = "Done";
menuitems[3,1] = "Back";

x = 1280/2;
y = 720 - sprite_get_height(image_index)/2 - 16;