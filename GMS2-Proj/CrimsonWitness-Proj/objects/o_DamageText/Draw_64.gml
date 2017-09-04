if(flickertimer <= 0 || flickertimer % 2 == 1){
	__draw_text(x,y, string(dmgamnt), s_LrgKomikaFont, 0.4, 0);
}
flickertimer--;