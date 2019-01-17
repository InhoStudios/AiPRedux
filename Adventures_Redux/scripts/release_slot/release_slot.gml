/// @description release_slot(slot, item ID);
/// @param slot
/// @param  item ID
var temp_spr = spr;
var slot = argument0;
var ID = argument1;
var amnt = global.slot_count[slot_taken];

if(temp_spr == global.item_sprite[ID]){
    for(items = 0; items < amnt; items++){
        instance_create(o_player.x + irandom_range(-3,3),o_player.y + irandom_range(30,32),global.item_obj[ID]);
        global.item[ID]--;
    }
    
    if(global.slot_count[inventory.slot_taken] >= 0) global.slot_count[slot_taken] = 0;
    
    global.slotID[inventory.slot_taken] = -1;
    inventory.spr = blank;
}

