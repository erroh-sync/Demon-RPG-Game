// Denote Animation Variables
var BodySquishX;
var BodySquishY;

var CoreSquishX;
var CoreSquishY;
var CoreWobbleX;
var CoreWobbleY;

var SodaRot;
var SodaWobbleX;
var SodaWobbleY;

var TissueRot;
var TissueWobbleX;
var TissueWobbleY;

var EyesWobbleX;
var EyesWobbleY;

// Set Animation Variables
switch(c_anim){
	default:
		BodySquishX = abs(sin((current_time + animoffset[8])/256)/16 + 1.0);
		BodySquishY = abs(cos((current_time + animoffset[8])/256)/16 + 1.0);
		
		CoreSquishX = abs(sin((current_time + animoffset[0])/256)/16 + 0.8);
		CoreSquishY = abs(cos((current_time + animoffset[0])/256)/16 + 0.8);
		CoreWobbleX = sin((current_time + animoffset[1])/256) * 8;
		CoreWobbleY = sin((current_time + animoffset[1])/512) * 8;
		
		SodaRot = sin((current_time + animoffset[3])/512) * 12;
		SodaWobbleX = sin((current_time + animoffset[4])/768) * 4;
		SodaWobbleY = sin((current_time + animoffset[4])/1024) * 4;
		
		TissueRot = sin((current_time + animoffset[6])/512) * 12;
		TissueWobbleX = sin((current_time + animoffset[7])/768) * 4;
		TissueWobbleY = sin((current_time + animoffset[7])/1024) * 4;
		
		EyesWobbleX = sin((current_time + animoffset[9])/1024) * 8;
		EyesWobbleY = sin((current_time + animoffset[9])/256) * 4;
		break;
}

// Body
draw_sprite_ext(s_SlimeBody,0,96,192,BodySquishX,BodySquishY,0,c_white,1.0);

// Junk
// Core
draw_sprite_ext(s_SlimeJunk,0,97 + CoreWobbleX,151 + CoreWobbleY, CoreSquishX, CoreSquishY, 0.0, c_white, 1.0);

// Soda Can
if(animoffset[2] > 128)
	draw_sprite_ext(s_SlimeJunk,1,97 + 24 + SodaWobbleX,151 + 24 + SodaWobbleY,1.0,1.0,SodaRot,c_white,1.0);

// Tissue
if(animoffset[ 5] > 128)
	draw_sprite_ext(s_SlimeJunk,2,97 - 20 + TissueWobbleX,151 - 20 + TissueWobbleY,1.0,1.0,TissueRot,c_white,1.0);

// Features
draw_sprite(s_SlimeFeatures,0,96 + EyesWobbleX,96 + EyesWobbleY); // Eyes
draw_sprite(s_SlimeFeatures,2,96 + EyesWobbleX*0.75,96 + EyesWobbleY*0.75); // Mouth