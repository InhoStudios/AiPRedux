if (instance_exists(objPlayerDead)){
   followObj=objPlayerDead;
}

if instance_exists(followObj)
{
	xTo = followObj.x;
	yTo = followObj.y;
    //motion_set(point_direction(x,y,followObj.x,followObj.y),point_distance(x,y,followObj.x,followObj.y)/6)
}


x += (xTo-x)/9;
y += (yTo-y)/9;

x = clamp(x,viewWidthHalf,room_width-viewWidthHalf);
y = clamp(y,viewHeightHalf,room_height-viewHeightHalf);

camera_set_view_pos(cam,x-viewWidthHalf,y-viewHeightHalf);