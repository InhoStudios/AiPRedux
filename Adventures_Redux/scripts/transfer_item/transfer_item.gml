/// @description transfer_item(slot, ID, spr);
/// @param slot
/// @param  ID
/// @param  spr
var slot = argument0;
var ID = argument1;
var temp_spr = argument2;

var slotID = ds_list_find_value(global.inv_slot,slot);
var count_new = ds_list_find_value(global.inv_count,slot);
var count_taken = ds_list_find_value(global.inv_count,slot_taken);

if(temp_spr == global.item_sprite[ID]){
    if(slotID == -1){
        ds_list_replace(global.inv_slot,slot,ID);
        //global.slotID[slot] = ID;
        ds_list_replace(global.inv_count,slot,count_taken);
        //global.slot_count[slot] = global.slot_count[inventory.slot_taken];
        
        ds_list_replace(global.inv_slot,slot_taken,-1);
        //global.slotID[inventory.slot_taken] = -1;
        ds_list_replace(global.inv_count,slot_taken,0);
        //global.slot_count[inventory.slot_taken] = 0;
    } else if(slotID == ID){
        while(count_new < global.max_stack && count_taken > 0){
            ds_list_replace(global.inv_count,slot,count_new+1)
            ds_list_replace(global.inv_count,slot_taken,count_taken-1);
        }
        if(count_taken <= 0){
            ds_list_replace(global.inv_slot,slot_taken,-1);
        }
    }
    inventory.spr = blank;
}

