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
		BodySquishX = abs(sin(current_time / 256 + animoffset[8]) / 16 + 1.0);
		BodySquishY = abs(cos(current_time / 256 + animoffset[8]) / 16 + 1.0);
		
		CoreSquishX = abs(sin(current_time / 256 + animoffset[0]) / 16 + 0.8);
		CoreSquishY = abs(cos(current_time / 256 + animoffset[0]) / 16 + 0.8);
		
		CoreWobbleX = abs(sin(current_time / 256 + animoffset[1]) * 8);
		CoreWobbleY = abs(cos(current_time / 512 + animoffset[1]) * 8);
		
		SodaRot = abs(sin(current_time / 512 + animoffset[3]) * 12);
		
		SodaWobbleX = abs(sin(current_time / 768 + animoffset[4]) * 4);
		SodaWobbleY = abs(cos(current_time / 1024 + animoffset[4]) * 4);
		
		TissueRot = abs(sin(current_time / 512 + animoffset[6]) * 12);
		
		TissueWobbleX = abs(sin(current_time / 768 + animoffset[7]) * 4);
		TissueWobbleY = abs(cos(current_time / 1024 + animoffset[7]) * 4);
		
		EyesWobbleX = abs(sin(current_time / 1024 + animoffset[9]) * 12);
		EyesWobbleY = abs(cos(current_time / 256 + animoffset[9]) * 4);
		break;
}

// Body
draw_sprite_ext(s_SlimeBody,0,96,192,BodySquishX,BodySquishY,0,c_white,alpha);

// Junk
// Core
draw_sprite_ext(s_SlimeJunk,0,97 + CoreWobbleX,151 + CoreWobbleY, CoreSquishX, CoreSquishY, 0.0, c_white, alpha);

// Soda Can
if(animoffset[2] > 128)
	draw_sprite_ext(s_SlimeJunk,1,97 + 24 + SodaWobbleX,151 + 24 + SodaWobbleY,1.0,1.0,SodaRot,c_white, alpha);

// Tissue
if(animoffset[ 5] > 128)
	draw_sprite_ext(s_SlimeJunk,2,97 - 20 + TissueWobbleX,151 - 20 + TissueWobbleY,1.0,1.0,TissueRot,c_white, alpha);

// Features
draw_sprite_ext(s_SlimeFeatures,0,96 + EyesWobbleX,96 + EyesWobbleY, 1, 1, 0, c_white, alpha); // Eyes
draw_sprite_ext(s_SlimeFeatures,2,96 + EyesWobbleX*0.75,96 + EyesWobbleY*0.75, 1, 1, 0, c_white, alpha); // Mouth