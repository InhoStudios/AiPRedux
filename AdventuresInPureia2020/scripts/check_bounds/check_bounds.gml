/// @description check_bounds(object, radius);
/// @param object
/// @param  radius

var obj = argument0;
var rad = argument1;

if(instance_exists(obj)){
    if(obj.x > x - rad && obj.x < x + rad && obj.y > y - rad && obj.y < y + rad){
        return true;
    } else {
        return false;
    }
}
