if(fadeamount > 1.1)
{
	switch(o_MainMenu.selecteditem_y){
		case 0:
			room_goto(r_NewGame);
			break;
		case 1:
			global.p_saved_x = 64;
			global.p_saved_y = 64;
			global.p_saved_r = 90;
			room_goto(r_TestCombat);
			break;
		default:
			instance_destroy();
			break;
	}
}