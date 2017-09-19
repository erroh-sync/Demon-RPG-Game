if(flickertimer <= 0 || flickertimer % 2 == 1){
	__draw_text(x,y, "#c255173030" + txt, s_SmlKomikaFont, 0.4, 0);
}
flickertimer--;