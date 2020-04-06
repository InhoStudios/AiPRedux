//This script returns the object above top of the object who calls this

amount=argument0        //how much pixels in the coldirection will be tested
colObj=argument1        //object to check collision with
returned=0

returned = collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top-amount,colObj,1,1)

return returned;