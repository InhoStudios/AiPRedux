var cell_width = 32;
var cell_height = 32;

if(draw_inv){
    var startX = __view_get( e__VW.XView, 0 ) + 40;
    var startY = __view_get( e__VW.YView, 0 ) + 40;
    var width = 400;
    var height = 172;
    
    for(xx = startX + 32; xx < startX + width; xx += 76){
        for(yy = startY + 24; yy < startY + height; yy += 52){
            manage_inventory(cell_width,cell_height);
        }
    }
    
}

