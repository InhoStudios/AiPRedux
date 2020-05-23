var _key = SAVE_FILE + "Current_room_pos";
var _access = GAME_SAVE_DATA[? _key];

if(_access == undefined) exit;

var _pos = ds_grid_create(0, 0);
ds_grid_read(_pos, _access);

var nextRoom = asset_get_index(_pos[# PositionValues.CURRENT_ROOM, 0]);

if(nextRoom != undefined) room_goto(nextRoom);

with(objPlayer){
	x = _pos[# PositionValues.x, 0];
	y = _pos[# PositionValues.y, 0];
}

ds_grid_destroy(_pos);