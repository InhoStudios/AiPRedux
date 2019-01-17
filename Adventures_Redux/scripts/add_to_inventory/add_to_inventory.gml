/// @description add_to_inventory(item ID, value);
/// @param item ID
/// @param  value
var inv = inventory;
var ID = argument0;
var value = argument1;
var inv_full = false;

for(slot = 0; slot < inv.total_slots; slot++){
    if(global.item_stackable[ID]){
        if(global.slotID[slot] == ID && global.slot_count[slot] < global.max_stack){
            while(value > 0 && global.slot_count < global.max_stack){
                global.item[ID]++;
                global.slot_count[slot]++;
                value--;
            }
            if(value <= 0) break;
        }
    }
    
    if(slot == inv.total_slots - 1){
        for(jslot = 0; jslot < inv.total_slots; jslot++){
            // check if there is any open slot
            if(global.slotID[jslot] == -1){
                global.slotID[jslot] = ID;
                while(value > 0 && global.slot_count[jslot] < global.max_stack){
                    global.item[ID]++;
                    global.slot_count[jslot]++;
                    value--;                    
                }
                inv_full = false;
                break;
            } else {
                // set the inventory to be full
                inv_full = true;
            }
        }
    }
}

if(inv_full){
    instance_create(o_player.x,o_player.y,global.item_obj[ID]);
}
