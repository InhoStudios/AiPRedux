var tempSpr = spr;
var itemID = argument[0];
var value = ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken);

if(tempSpr == itemSpr[itemID]) {
	
	if(ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken) >= 1) {
		for(var val = 0; val < value; val++) {
			instance_create_layer(mouse_x + irandom_range(-16, 16), mouse_y, layer, itemObj[itemID]);
			item[itemID]--;
			
			//remove one item from the slot, slow but for debugging sake
			ds_grid_set(inv, Inventory.SLOT_COUNT, slotTaken, 
				ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken) - 1
				);
			
			show_debug_message("Removed one item from slot " + string(slotTaken) + ", with " + string(ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken)) + " items remaining");
		}
	}
	
	if(ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken) >= 0) ds_grid_set(inv, Inventory.SLOT_COUNT, slotTaken, 0);
	
	ds_grid_set(inv, Inventory.SLOT_ID, slotTaken, -1);
	ds_grid_set(inv, Inventory.SLOT_NAME, slotTaken, itemName[Items.TOTAL]);
	spr = NO_SPRITE;
}