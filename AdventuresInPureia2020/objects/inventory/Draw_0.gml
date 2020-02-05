var cell_width = 32;
var cell_height = 32;

if(draw_inv){
    var startX = __view_get( e__VW.XView, 0 ) + 40;
    var startY = __view_get( e__VW.YView, 0 ) + 40;
    var width = 400;
    var height = 172;
    
    draw_sprite(spr_inv,0,startX,startY);
    
    for(xx = startX + 32; xx < startX + width; xx += 76){
        for(yy = startY + 24; yy < startY + height; yy += 52){
            
                coordX[current_slot] = xx;
                coordY[current_slot] = yy;
                
                draw_sprite(spr_inv_slot, 0, xx, yy);
                current_slot++;
                if(current_slot >= total_slots){
                    current_slot = 0;
                    break;
            }
        }
    }
}

