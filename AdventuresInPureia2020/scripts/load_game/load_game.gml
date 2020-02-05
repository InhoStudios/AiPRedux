with(game){
    
    if(!file_exists(save_file_name))
        exit;

    ds_map_destroy(save_data);
    save_data = ds_map_secure_load(save_file_name);
    
    var _room = ds_map_find_value(save_data,"Current Room");
    if(!is_undefined(_room) && room_get_name(room) != _room){
        room_goto(asset_get_index(_room));
    } else {
        room_restart();
    }
    
    room_restart();
}
