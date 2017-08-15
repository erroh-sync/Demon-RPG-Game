// Body
var BodySquishX = abs(sin((current_time + animoffset[8])/256)/16 + 1.0);
var BodySquishY = abs(cos((current_time + animoffset[8])/256)/16 + 1.0);
draw_sprite_ext(s_SlimeBody,0,96,192,BodySquishX,BodySquishY,0,c_white,1.0);

// Junk
// Core
var CoreSquishX = abs(sin((current_time + animoffset[0])/256)/16 + 0.8);
var CoreSquishY = abs(cos((current_time + animoffset[0])/256)/16 + 0.8);
var CoreWobbleX = sin((current_time + animoffset[1])/256) * 8;
var CoreWobbleY = sin((current_time + animoffset[1])/512) * 8;
draw_sprite_ext(s_SlimeJunk,0,97 + CoreWobbleX,151 + CoreWobbleY, CoreSquishX, CoreSquishY, 0.0, c_white, 1.0);

// Soda Can
if(animoffset[2] > 128){
	var SodaRot = sin((current_time + animoffset[3])/512) * 12;
	var SodaWobbleX = sin((current_time + animoffset[4])/768) * 4;
	var SodaWobbleY = sin((current_time + animoffset[4])/1024) * 4;
	draw_sprite_ext(s_SlimeJunk,1,97 + 24 + SodaWobbleX,151 + 24 + SodaWobbleY,1.0,1.0,SodaRot,c_white,1.0);
}

// Tissue
if(animoffset[ 5] > 128){
	var TissueRot = sin((current_time + animoffset[6])/512) * 12;
	var TissueWobbleX = sin((current_time + animoffset[7])/768) * 4;
	var TissueWobbleY = sin((current_time + animoffset[7])/1024) * 4;
	draw_sprite_ext(s_SlimeJunk,2,97 - 20 + TissueWobbleX,151 - 20 + TissueWobbleY,1.0,1.0,TissueRot,c_white,1.0);
}

// Features
var EyesWobbleX = sin((current_time + animoffset[9])/1024) * 8;
var EyesWobbleY = sin((current_time + animoffset[9])/256) * 4;
draw_sprite(s_SlimeFeatures,0,96 + EyesWobbleX,96 + EyesWobbleY); // Eyes
draw_sprite(s_SlimeFeatures,2,96 + EyesWobbleX*0.75,96 + EyesWobbleY*0.75); // Mouth