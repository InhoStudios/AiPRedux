total_slots = 15;
current_slot = 0;

enum Inventory{
    slot_ID,
    slot_count,
    column_count
}

globalvar inv;
inv = ds_grid_create(Inventory.column_count,total_slots);

var _slot;

for(_slot = 0; _slot < total_slots; _slot++){
    inv[# Inventory.slot_ID, _slot] = -1;
    inv[# Inventory.slot_count, _slot] = 0;
}

global.inv_slot = ds_list_create();
global.inv_count = ds_list_create();

for(i = 0; i < total_slots; i++){
    global.slot_count[i] = 0;
    global.slotID[i] = -1;
    
    ds_list_add(global.inv_slot,-1);
    ds_list_add(global.inv_count,0);
    
    coordX[i] = 0;
    coordY[i] = 0;
}

init_items();

spr = blank;
slot_taken = -1;

draw_inv = false;

global.max_stack = 15;

