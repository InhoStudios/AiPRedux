//This script checks whether left of the object who calls this is a collision

amount=argument0        //how much pixels in the coldirection will be tested
colObj=argument1        //object to check collision with

if collision_rectangle(bbox_left,bbox_top,bbox_left-amount,bbox_bottom,colObj,1,1)
{
    return 1
}
else
{
    return 0
}