var _key = room_get_name(room) + "items";
var _access = GAME_SAVE_DATA[? _key];

if(_access == undefined) exit;

show_debug_message("_access is defined");

var _items = ds_grid_create(0, 0);
ds_grid_read(_items, _access);

// test EESH
while(instance_exists(clsItemGeneric)) {
	with(clsItemGeneric) instance_destroy();
}
//////////////////////////////////////


for(var i = 0; i < ds_grid_height(_items); i++) {
	var obj = asset_get_index(_items[# ItemAttributes.obj, i])
	if(obj > -1) {
		with(instance_create_layer(x, y, layer, obj)) {
			x = _items[# ItemAttributes.xPos, i];
			y = _items[# ItemAttributes.yPos, i];
			//show_debug_message("Instance create at (" + string(x) + "," + string(y) + ") with index " + string(i));
		}
	}
}

ds_grid_destroy(_items);