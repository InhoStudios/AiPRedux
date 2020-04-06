var slot = argument[0]; // slot number
var itemID = argument[1]; // numerical ID

if(ds_grid_get(inv, Inventory.SLOT_ID, slot) != -1 && ds_grid_get(inv, Inventory.SLOT_ID, slot) == itemID) {
	slotTaken = slot;
	spr = itemSpr[itemID];
}