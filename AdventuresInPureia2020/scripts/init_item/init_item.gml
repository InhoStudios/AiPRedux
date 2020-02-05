/// @description init_item(ID, stackable, sprite, object);
/// @param ID
/// @param  stackable
/// @param  sprite
/// @param  object

ID = argument0;
stackable = argument1;
sprite = argument2;
object = argument3;

// set global item variables;
ds_list_add(global.total_items,ID);
global.item[ID] = 0;
global.item_stackable[ID] = stackable;
global.item_sprite[ID] = sprite;
global.item_obj[ID] = object;
