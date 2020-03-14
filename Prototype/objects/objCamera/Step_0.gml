if instance_exists(objPlayerDead)
   followObj=objPlayerDead

if instance_exists(followObj)
{
    motion_set(point_direction(x,y,followObj.x,followObj.y),point_distance(x,y,followObj.x,followObj.y)/3)
}

