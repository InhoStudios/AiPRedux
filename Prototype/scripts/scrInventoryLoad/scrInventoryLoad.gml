with(objInventory) {
	
	var _inv = GAME_SAVE_DATA[? inventoryKey];
	if(_inv == undefined) exit;
	
	ds_grid_read(inv, _inv);
	
}