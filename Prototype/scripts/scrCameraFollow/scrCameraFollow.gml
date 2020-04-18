if(!instance_exists(objPlayer) && instance_exists(objPlayerDead)){
	target = objPlayerDead;
}

x+=(target.x - x)*panSpd;
y+=(target.y - y)*panSpd;
camera_set_view_pos(cam,

                    clamp( camera_get_view_x(cam), 0, room_width - camera_get_view_width(cam) ),

                    clamp( camera_get_view_y(cam), 0, room_height - camera_get_view_height(cam) ));
/*camera_set_view_pos(cam, x-camW*0.5,y-camH*0.5);