event_inherited();

// Stats and Other Data
level = 10;
max_hitpoints = 50;
hitpoints = max_hitpoints;
max_manapoints = 30;
manapoints = max_manapoints;
strength = 20;
resistence = 15;

// Inventory
curr_ring = 0; // The current selected ring
// Items
for(var i = 0; i < 32; i++){ // Max items in bag is 32.
	items[i,0] = 0; // Index
	items[i,1] = 0; // Quantity
}
// KeyItems
for(var i = 0; i < 16; i++){ // Ensure 16 is larger than the number of total Key Items.
	keyitems[i] = 0; // Index
}
// Rings
for(var i = 0; i < 16; i++){ // Ensure 32 is larger than the number of total Rings.
	rings[i] = 0; // Index
}
// Skills
for(var i = 0; i < 8; i++){
	skills[i] = 0;
}