with(objInventory) {
	ds_map_replace(GAME_SAVE_DATA, inventoryKey, ds_grid_write(inv));
}