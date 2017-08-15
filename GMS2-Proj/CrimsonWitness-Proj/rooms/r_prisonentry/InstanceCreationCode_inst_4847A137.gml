requireinput = true;
directionmatch = true;

if(global.gameflags[10]){
	script[0,0] = "";
	script[0,1] = "";
	script[0,2] = "$roomgoto: " + string_format(asset_get_index("r_PrisonEntranceHall"),4,0) + ",0064,0032,090     $diaclose__";
}else{
	script[0,0] = "...?";
	script[0,1] = "";
	script[0,2] = "";

	script[1,0] = "The door doesn't seem to be locked!";
	script[1,1] = "";
	script[1,2] = "";

	script[2,0] = "You open it cautiously...";
	script[2,1] = "";
	script[2,2] = "$_setflag: 0010t";

	script[3,0] = "";
	script[3,1] = "";
	script[3,2] = "$roomgoto: " + string_format(asset_get_index("r_PrisonEntranceHall"),4,0) + ",0064,0032,090     $diaclose__";
}