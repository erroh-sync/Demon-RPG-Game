if(fadeamount > 1.1)
{
	switch(o_MainMenu.selecteditem_y){
		case 0:
			room_goto(r_NewGame);
			break;
		case 1:
			//game_end();
			room_goto(r_PrisonEntry);
			break;
		default:
			instance_destroy();
			break;
	}
}