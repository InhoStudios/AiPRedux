/// @description  save EXP objects

enum Exp{
    x,
    y,
    image_index,
    column_count
}

var _exp = ds_grid_create(Exp.column_count,0);

with(o_xp_orb){
    var _row = ds_grid_add_row(_exp);
    _exp[# Exp.x, _row] = x;
    _exp[# Exp.y, _row] = y;
    _exp[# Exp.image_index, _row] = image_index;
}

var _key = create_obj_key("exp");

ds_map_replace(save_data,_key,ds_grid_write(_exp));
ds_grid_destroy(_exp);

