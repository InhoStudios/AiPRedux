vsAdd=0

if !instance_exists(objectOn) and statePrev=ON_GROUND and script_execute(scrCheckColDown,100,clsSolidAll)=1 and ((state!=JUMPING and (script_execute(scrCheckColDown,1,clsSolid)==0)) 
or (instance_exists(collision_rectangle(bbox_left,bbox_bottom-1,bbox_right,bbox_top,clsSolidTop,1,1)) and script_execute(scrCheckColDown,1,clsSolidAll)==0
and vs>=0))
{
    if hs<0
       add2=hs*(-1)
    else
        add2=hs
           
    add=1
    while(collision_line(bbox_left,bbox_bottom+add,bbox_right,bbox_bottom+add,clsSolidAll,1,1)<0)
    {
        add+=1
    }
            
    if add<=10
    {   
        vsOnce+=add-1
        state=ON_GROUND
    }
    else
    {
        if !instance_exists(objectOn) and add<20
        {
            vs=add2
        }
    }
}