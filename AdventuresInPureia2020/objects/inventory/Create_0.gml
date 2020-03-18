/// @description Insert description here
// You can write your code in this editor

init_items();

total_slots = 15;

enum Inventory {
	slot_ID,
	slot_name,
	slot_count,
	columns
};
/*

inv =
     id name count
slot [] [  ] [   ]
slot [] [  ] [   ]

*/
inv = ds_grid_create(Inventory.columns, total_slots);

// set to zero
for(var i = 0; i < total_slots; i++){
	ds_grid_set(inv, Inventory.slot_ID, i, -1);
	ds_grid_set(inv, Inventory.slot_name, i, item_name[Items.total]);
	ds_grid_set(inv, Inventory.slot_count, i, 0);
	
	// draw with coord_x and coord_y for inventory;
	coord_x[i] = 0;
	coord_y[i] = 0;
}

cell_width = 32;
cell_height = 32;

spr = no_sprite;