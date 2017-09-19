// Menu Bottom
draw_sprite(s_MenuBottom, 0, x, y);

// Menu Topper
draw_sprite(s_ItemMenuTopper, 0, x, y - 6 * sprite_get_height(s_MenuItemButton));

// Title
__draw_text( x - 512, y - 6 * sprite_get_height(s_MenuItemButton) - 140, "#w040" + __interpret_loc( 16, e_LocType.elt_guiloc), s_MedKomikaFont, 0.5, 0);

// Menu Bag
draw_sprite(s_ItemMenuBag, bagframe, x - 128, y - 6 * sprite_get_height(s_MenuItemButton) - 55 - (192 * bagposition));

//Tabs
for(var i = 0; i < array_length_1d(tabanim); i++){
	draw_sprite(s_ItemMenuTab, tabanim[i] * 3.1, x - 340 + (130 * i), y - 6 * sprite_get_height(s_MenuItemButton));
	__draw_text( x - 340 + (130 * i) - 128, y - 6 * sprite_get_height(s_MenuItemButton) - (34 * tabanim[i]), __interpret_loc(tabname[i], e_LocType.elt_guiloc), s_SmlKomikaFont, 0.45, 0);
}