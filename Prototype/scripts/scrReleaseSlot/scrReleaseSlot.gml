var tempSpr = spr;
var slot = argument[0];
var itemID = argument[1];
var value = ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken);

if(tempSpr == itemSpr[itemID]) {
	if(itemStackable[itemID] && ds_grid_get(inv, Inventory.SLOT_COUNT, slot) > 1) {
		for(var val = 0; val < value; val++) {
			instance_create_layer(mouse_x + irandom_range(-16, 16), mouse_y, layer, itemObj[itemID]);
			item[itemID]--;
		}
	} else {
		instance_create_layer(mouse_x, mouse_y, layer, itemObj[itemID]);
		item[itemID]--;
	}
	
	if(ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken) >= 0) ds_grid_set(inv, Inventory.SLOT_COUNT, slotTaken, 0);
	
	ds_grid_set(inv, Inventory.SLOT_ID, slotTaken, -1);
	ds_grid_set(inv, Inventory.SLOT_NAME, slotTaken, itemName[Items.TOTAL]);
	spr = NO_SPRITE;
}