/*var cell_width = 32;
var cell_height = 32;

if(draw_inv){
    var bounds = 64

    var startX = bounds;
    var startY = bounds;
    var endX = display_get_gui_width() - bounds;
    var endY = display_get_gui_height() - bounds;
    
    var width = display_get_gui_width() - (bounds*2);
    var height = display_get_gui_height() - (bounds*2);
    
    draw_set_alpha(0.5);
    
    draw_rectangle(startX,startY,endX,endY,false);
    
    for(xx = startX + 32; xx < endX; xx += width/5){
        for(yy = startY + 24; yy < endY; yy += height/3){
            coordX[current_slot] = xx;
            coordY[current_slot] = yy;
            
            draw_sprite(spr_inv_slot, 0, xx, yy);
            current_slot++;
            if(current_slot >= total_slots){
                current_slot = 0;
                break;
            }
            manage_inventory(cell_width, cell_height);
        }
    }
}

draw_set_alpha(1);

/* */
/*  */
