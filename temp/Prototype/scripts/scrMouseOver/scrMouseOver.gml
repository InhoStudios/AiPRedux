var xx = argument[0];
var yy = argument[1];
var width = argument[2];
var height = argument[3];

return (mouse_x >= xx && mouse_y >= yy && mouse_x <= xx + width && mouse_y <= yy + height);