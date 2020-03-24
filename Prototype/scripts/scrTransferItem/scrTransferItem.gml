var slot = argument[0];
var itemID = argument[1];
var tempSpr = argument[2];

if(tempSpr == itemSpr[itemID]) {
	// if the slot is empty
	if(
		ds_grid_get(inv, Inventory.SLOT_NAME, slot) == itemName[Items.TOTAL] &&
		ds_grid_get(inv, Inventory.SLOT_ID, slot) == -1
	) {
		// move item to empty slot
		ds_grid_set(inv, Inventory.SLOT_ID, slot, itemID);
		ds_grid_set(inv, Inventory.SLOT_NAME, slot, itemName[itemID]);
		ds_grid_set(inv, Inventory.SLOT_COUNT, slot, ds_grid_get(inv, Inventory.SLOT_COUNT, slot));
		
		// set original slot to empty
		ds_grid_set(inv, Inventory.SLOT_ID, slotTaken, -1);
		ds_grid_set(inv, Inventory.SLOT_NAME, slotTaken, itemName[Items.TOTAL]);
		ds_grid_set(inv, Inventory.SLOT_COUNT, slotTaken, 0);
	}
	// if the slot has space
	else if(
		ds_grid_get(inv, Inventory.SLOT_NAME, slot) == itemName[itemID] &&
		ds_grid_get(inv, Inventory.SLOT_ID, slot) == itemID
	) {
		
		// loop through the empty spaces and fill them up
		while(
			ds_grid_get(inv, Inventory.SLOT_COUNT, slot) < maxItemStack && 
			ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken) > 0
		) {
			ds_grid_set(inv, Inventory.SLOT_COUNT, slot, ds_grid_get(inv, Inventory.SLOT_COUNT, slot) + 1);
			ds_grid_set(inv, Inventory.SLOT_COUNT, slotTaken, ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken) - 1);
		}
		
		// if the slot taken from is empty, clear it
		if(ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken) <= 0) {
			ds_grid_set(inv, Inventory.SLOT_ID, slotTaken, -1);
			ds_grid_set(inv, Inventory.SLOT_NAME, slotTaken, itemName[Items.TOTAL]);
		}
		
	}
	
	spr = NO_SPRITE;
	slotTaken = -1;
	
}