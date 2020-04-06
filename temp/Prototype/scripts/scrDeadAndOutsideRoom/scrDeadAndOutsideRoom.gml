//OUT OF SCREEN?
if x<0
{
   x=0
   hs*=-1
}
   
if x>room_width
{
   x=room_width
   hs*=-1
}

//DEAD?
crushed=0
if instance_exists(objectOn)
{
     if objectOn.vs<0 and script_execute(scrCheckColUp,1,clsSolidAll)=1
     {
        crushed=1
     }
}

if (bbox_bottom>=room_height) or (crushed=1)
{
    //dieing!
    d=instance_create_depth(x,y,-3,objPlayerDead)
    d.hspeed=hs
   
    instance_destroy()
}