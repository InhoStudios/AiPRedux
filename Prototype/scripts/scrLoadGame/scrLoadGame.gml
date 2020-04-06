if(file_exists(SAVE_FILE)) {
	ds_map_destroy(GAME_SAVE_DATA);
	GAME_SAVE_DATA = ds_map_secure_load(SAVE_FILE);
	
	scrInventoryLoad();
	
	scrEntityLoad();
}