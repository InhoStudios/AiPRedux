var slot = argument[0];
var itemID = argument[1];
var scale;

draw_set_alpha(1);

if(ds_grid_get(inv, Inventory.SLOT_ID, slot) == itemID && ds_grid_get(inv, Inventory.SLOT_NAME, slot) == itemName[itemID]) {
	scale = cellSize / sprite_width;
	if(slotTaken != slot) {
		draw_sprite_ext(itemSpr[itemID], 0, inv_X[slot] + (scale * 16), inv_Y + (scale * 16), scale, scale, 0, c_white, 1);
	} else if(slotTaken == slot){
		draw_sprite_ext(NO_SPRITE, 0, inv_X[slot] + (scale * 16), inv_Y + (scale * 16), scale, scale, 0, c_white, 1);
	}
	
	draw_set_colour(c_black);
	draw_set_alpha(1);
	if(itemStackable[itemID] && ds_grid_get(inv, Inventory.SLOT_COUNT, slot) > 1 && ds_grid_get(inv, Inventory.SLOT_ID, slot) != -1) {
		if(slotTaken != slot) {
			draw_text(inv_X[slot] + (scale * 16), inv_Y + (scale * 16), string(ds_grid_get(inv, Inventory.SLOT_COUNT, slot)));
		}
	}
}