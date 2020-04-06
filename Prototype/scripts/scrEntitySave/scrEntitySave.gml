enum ItemAttributes {
	xPos,
	yPos,
	obj,
	ATTRIBUTE_COUNT
};

var _items = ds_grid_create(ItemAttributes.ATTRIBUTE_COUNT, 0);

with(clsItemGeneric) {
	var _row = scrDSGridAddRow(_items);
	
	_items[# ItemAttributes.xPos, _row] = x;
	_items[# ItemAttributes.yPos, _row] = y;
	_items[# ItemAttributes.obj, _row] = object_get_name(object_index);
	//show_debug_message("Instance [" + object_get_name(object_index) + "] at (" + string(x) + "," + string(y) + ") saved in row " + string(_row));
}

var _key = room_get_name(room) + "items";

ds_map_replace(GAME_SAVE_DATA, _key, ds_grid_write(_items));

ds_grid_destroy(_items);