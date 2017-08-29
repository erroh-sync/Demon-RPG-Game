if(flickertimer <= 0 || flickertimer % 2 == 1){
	for(var i = 0; i < string_length(string(dmgamnt)); i++){
		//string_char_at(string(dmgamnt), i)
		draw_sprite_ext(s_DamageText, real(string_char_at(string(dmgamnt), i + 1)), x + (i * 64), y - i, 1.0, 1.0, 0.0, global.menucol, 1.0);
	}
}
flickertimer--;