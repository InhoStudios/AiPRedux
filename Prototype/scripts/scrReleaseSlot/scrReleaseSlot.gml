var tempSpr = spr;
var slot = argument[0];
var itemID = argument[1];
var value = ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken);

if(tempSpr == itemSpr[itemID]) {
	if(itemStackable[itemID]) {
		for(var val = 0; val < value; val++) {
			instance_create_layer(objPlayer.x + irandom_range(-16, 16), objPlayer.y, layer, itemObj[itemID]);
			item[itemID]--;
		}
	} else {
		instance_create_layer(objPlayer.x, objPlayer.y, layer, itemObj[itemID]);
		item[itemID]--;
	}
	
	if(ds_grid_get(inv, Inventory.SLOT_COUNT, slotTaken) >= 0) ds_grid_set(inv, Inventory.SLOT_COUNT, slotTaken, 0);
	
	ds_grid_set(inv, Inventory.SLOT_ID, slotTaken, -1);
	ds_grid_set(inv, Inventory.SLOT_NAME, slotTaken, itemName[Items.TOTAL]);
	spr = NO_SPRITE;
}