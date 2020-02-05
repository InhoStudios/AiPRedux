/// @description click_slot(slot, item ID);
/// @param slot
/// @param  item ID

var slot = argument0;
var ID = argument1;

if(global.slotID[slot] != -1){
    if(global.slotID[slot] == ID){
        inventory.slot_taken = slot;
        inventory.spr = global.item_sprite[ID];
    }
}

