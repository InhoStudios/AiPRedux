/// @description  draw_inv_sprite(slot, itemID);
/// @param slot
/// @param  itemID

var slot = argument0; // slot
var ID = argument1; // item ID

if(global.slotID[slot] == ID){
    draw_sprite(global.item_sprite[ID], 0, coordX[slot] + 16, coordY[slot] + 16);
    
    if(global.item_stackable[ID] && global.slot_count[slot] > 1){
        draw_set_font(fnt_text);
        draw_text(coordX[slot] + 16, coordY[slot] + 16, string_hash_to_newline(string(global.slot_count[slot])));
        draw_set_font(fnt_normal);
    }
}

