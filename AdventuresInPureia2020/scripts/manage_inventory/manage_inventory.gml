/// @description manage_inventory(cell width, cell height);
/// @param cell width
/// @param  cell height
var c_width = argument0;
var c_height = argument1;

for(slot = 0; slot < total_slots; slot++){
    for(item = 0; item < global.total_items; item++){
        draw_inv_sprite(slot, item);
    }
    if(inv_mouse_over(coordX[slot], coordY[slot], c_width, c_height)){
        if(input.mouse_left_p){
            for(jtem = 0; jtem < global.total_items; jtem++){
                click_slot(slot,jtem);
            }
        }
        for(ktem = 0; ktem < global.total_items; ktem++){
            //draw_name(slot,ktem);
        }
    }
}

if(input.mouse_left){
    draw_sprite(spr, 0, mouse_x + 6, mouse_y + 6);
}

if(input.mouse_left_r && slot_taken > -1){
    for(slot = 0; slot < total_slots; slot++){
        var startX = __view_get( e__VW.XView, 0 ) + 40;
        var startY = __view_get( e__VW.YView, 0 ) + 40;
        var width = 400;
        var height = 172;
        
        for(item = 0; item < global.total_items; item++){
            if(!inv_mouse_over(startX, startY, width, height)){
                var temp_spr = inventory.spr;
                release_slot(slot,item);
            } else if(((ds_grid_get(inv,Inventory.slot_ID,slot) == -1) || (ds_grid_get(inv,Inventory.slot_ID,slot) == item)) && slot != inventory.slot_taken){
                if(inv_mouse_over(coordX[slot], coordY[slot], c_width, c_height)){
                    var temp_spr = inventory.spr;
                    transfer_item(slot, item, temp_spr);
                }
            }
        }
    }
}


