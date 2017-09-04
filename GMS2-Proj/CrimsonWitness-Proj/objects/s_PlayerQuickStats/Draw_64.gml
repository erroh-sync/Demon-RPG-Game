// Backing
draw_sprite(s_QuickStatsBacking,0,100,44);

// Bars Lower
draw_sprite_part(s_QuickStatsHP,1,0,0,sprite_get_width(s_QuickStatsHP) * (display_hp_lower / o_PlayerInfo.max_hitpoints), sprite_get_height(s_QuickStatsHP),122,50);
draw_sprite_part(s_QuickStatsSP,1,0,0,sprite_get_width(s_QuickStatsSP) * (display_mp_lower / o_PlayerInfo.max_manapoints), sprite_get_height(s_QuickStatsSP),100,92);


// Bars Upper
draw_sprite_part(s_QuickStatsHP,0,0,0,sprite_get_width(s_QuickStatsHP) * (display_hp / o_PlayerInfo.max_hitpoints), sprite_get_height(s_QuickStatsHP),122,50);
draw_sprite_part(s_QuickStatsSP,0,0,0,sprite_get_width(s_QuickStatsSP) * (display_mp / o_PlayerInfo.max_manapoints), sprite_get_height(s_QuickStatsSP),100,92);

// Text
__draw_text( 136 - 16, 48 - 16, string_format(blit_mp,2,0) + "/" + string_format(o_PlayerInfo.max_manapoints,2,0) + "HP", s_MedKomikaFont, 0.4, 0);
__draw_text( 124 - 4, 90 - 8, string_format(blit_mp,2,0) + "/" + string_format(o_PlayerInfo.max_manapoints,2,0) + "SP", s_SmlKomikaFont, 0.4, 0);

// Ring

// Portrait
draw_sprite(s_QuickStatsFrame,0,2,2);