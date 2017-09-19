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
items = ds_list_create();
__grant_item(0);

// KeyItems
keyitems = ds_list_create();
__grant_keyitem(0);

// Rings
rings = ds_list_create();
__grant_ring(0);