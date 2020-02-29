/// @description  save current room
ds_map_replace(save_data, "Current Room", room_get_name(room));

/// load coins
var _key = create_obj_key("exp")

var _str = save_data[? _key];

if(_str == undefined)
    exit;
    
var _exp = ds_grid_create(0,0);
ds_grid_read(_exp,_str);

for(var _row = 0; _row < ds_grid_height(_exp); _row++){
    with(instance_create(0,0,o_xp_orb)){
        x = _exp[# Exp.x, _row];
        y = _exp[# Exp.y, _row];
        image_index = _exp[# Exp.image_index, _row];
    }
}

ds_grid_destroy(_exp);