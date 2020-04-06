//This script returns the object under bottom of the object who calls this

amount=argument0        //how much pixels in the colDirection will be tested
colObj=argument1        //object to check collision with
returned=0

returned = collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1+amount,colObj,1,1)

return returned;