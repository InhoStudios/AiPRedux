var slot = argument[0];
var itemID = argument[1];

draw_set_alpha(1);

if(ds_grid_get(inv, Inventory.SLOT_ID, slot) == itemID && ds_grid_get(inv, Inventory.SLOT_NAME, slot) == itemName[itemID]) {
	draw_sprite(itemSpr[itemID], 0, inv_X[slot] + 16, inv_Y + 16);
	
	if(itemStackable[itemID] && item[itemID] > -1) {
		draw_text(inv_X[slot] + 16, inv_y + 16, string(ds_grid_get(inv, Inventory.SLOT_COUNT, slot)));
	}
}