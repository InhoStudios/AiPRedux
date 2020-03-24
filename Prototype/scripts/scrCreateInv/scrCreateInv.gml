totalSlots = 3;
currentSlot = 0;
cellSize = 32;
slotTaken = 0;

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
	
	inv_X[i] = 0;
	inv_y = 0;
}

// debug
slotHover = 0;