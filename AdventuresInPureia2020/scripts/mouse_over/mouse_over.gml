/// @description mouse_over(left x,right x,top y,bottom y);
/// @param left x
/// @param right x
/// @param top y
/// @param bottom y
var x1 = argument0;
var x2 = argument1;
var y1 = argument2;
var y2 = argument3;

var mx = mouse_x, my = mouse_y;

if(mx > x1 && mx < x2 && my > y1 && my < y2){
    return true;
} else {
    return false;
}
