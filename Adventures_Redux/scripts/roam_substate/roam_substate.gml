if(alarm[0] <= 0){
    dir = irandom(360);
    if(!roam){
        hsp = lengthdir_x(movespeed, dir);
        vsp = lengthdir_y(movespeed, dir);
        roam = true;
    } else {
        roam = false;
        hsp = 0;
        vsp = 0;
    }
    alarm[0] = room_speed * 2;
    get_face(dir);
}

// switch target back to player
if(instance_exists(o_player)) o_target = instance_nearest(x,y,o_player);

