// save
inventoryKey = "inventory_save";

// instantiate variables
totalSlots = 3;
currentSlot = 0;
slotTaken = -1;

rCellSize = 32;
cellSize = rCellSize;

minClamp = 16;
maxClamp = 32;

spr = NO_SPRITE;

enum Inventory {
	SLOT_ID,
	SLOT_NAME,
	SLOT_COUNT,
	COLUMNS
};

/* 

inv =
     id    name  count
slot [   ] [   ] [   ]
slot [   ] [   ] [   ]

*/
	
inv = ds_grid_create(Inventory.COLUMNS, totalSlots);

// set inventory slots to 0
for(var i = 0; i < totalSlots; i++) {
	ds_grid_set(inv, Inventory.SLOT_ID, i, -1);
	ds_grid_set(inv, Inventory.SLOT_NAME, i, itemName[Items.TOTAL]);
	ds_grid_set(inv, Inventory.SLOT_COUNT, i, 0);
	
	/****/
	var count = string(ds_grid_get(inv, Inventory.SLOT_COUNT, i));
	show_debug_message("Slot " + string(i) + ": " + count);
	
	inv_X[i] = 0;
	inv_X_relative[i] = 0;
	inv_Y = 0;
}

// debug
slotHover = 0;

// set inventory object to have no sprite
sprite_index = NO_SPRITE;