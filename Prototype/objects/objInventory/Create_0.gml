/// @description Insert description here
// You can write your code in this editor

initItems();

totalSlots = 3;

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
	inv_y[i] = 0;
}

cellWidth = 32;
cellHeight = 32;

spr = NO_SPRITE;