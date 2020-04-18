enum PositionValues {
	x,
	y,
	CURRENT_ROOM,
	VALUE_COUNT
}

var _Positions = ds_grid_create(PositionValues.VALUE_COUNT, 1);

var _row = 0;

_Positions[# PositionValues.x, _row] = objPlayer.x;
_Positions[# PositionValues.y, _row] = objPlayer.y;
_Positions[# PositionValues.CURRENT_ROOM, _row] = room_get_name(room);

var _key = SAVE_FILE + "Current_room_pos";

ds_map_replace(GAME_SAVE_DATA, _key, ds_grid_write(_Positions));

ds_grid_destroy(_Positions);