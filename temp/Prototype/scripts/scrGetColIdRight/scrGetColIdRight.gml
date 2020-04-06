//This script returns the object right of of the object who calls this

amount=argument0        //how much pixels in the coldirection will be tested
colObj=argument1        //object to check collision with
returned=0

returned = collision_rectangle(bbox_right+1,bbox_top,bbox_right+amount,bbox_bottom,colObj,1,1)

return returned;