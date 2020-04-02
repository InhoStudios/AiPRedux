var slot = argument[0];
var itemID = argument[1];

draw_set_alpha(1);

if(ds_grid_get(inv, Inventory.SLOT_ID, slot) == itemID && ds_grid_get(inv, Inventory.SLOT_NAME, slot) == itemName[itemID]) {
	if(slotTaken != slot) {
		draw_sprite(itemSpr[itemID], 0, inv_X[slot] + 16, inv_Y + 16);
	} else if(slotTaken == slot){
		draw_sprite(NO_SPRITE, 0, inv_X[slot] + 16, inv_Y + 16);
	}
	
	if(itemStackable[itemID] && ds_grid_get(inv, Inventory.SLOT_COUNT, slot) > 1 && ds_grid_get(inv, Inventory.SLOT_ID, slot) != -1) {
		if(slotTaken != slot) {
			draw_text(inv_X[slot] + 16, inv_Y + 16, string(ds_grid_get(inv, Inventory.SLOT_COUNT, slot)));
		}
	}
}