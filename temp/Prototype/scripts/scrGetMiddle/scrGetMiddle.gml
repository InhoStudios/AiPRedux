//gets the middle x coordinate when collision

side1=argument0         
side2=argument1
COT=argument2   
        
if side1<COT.bbox_left
{
    side1=COT.bbox_left
}
           
if side2>COT.bbox_right
{
    side2=COT.bbox_right
}
           
return((side2+side1)/2)