//This script returns the object around the object who calls this is a collision

amount=argument0        //how much pixels in the coldirection will be tested
colObj=argument1        //object to check collision with
returned=0

returned = collision_rectangle(bbox_left-amount,bbox_top-amount,bbox_right+amount,bbox_bottom+amount,colObj,1,1)

return returned;