var substate = noone;

var px = 0, py = 0;
if(instance_exists(o_target)){
    px = o_target.x
    py = o_target.y
}

// establish line-of-sight and set substates
if(x > px - bounds && x < px + bounds && y > py - bounds && y < py + bounds){
    var dir = point_direction(x,y,px,py);
    var dist = movespeed;
    dist_x = lengthdir_x(dist,dir);
    dist_y = lengthdir_y(dist,dir);
    var roaming = false;
    while(!place_meeting(x + dist_x, y + dist_y, o_target)){
        if(place_meeting(x + dist_x, y + dist_y, o_obstacle)){
            substate = roam_substate;
            roaming = true;
            break;
        }
        dist += movespeed
        dist_x = lengthdir_x(dist,dir);
        dist_y = lengthdir_y(dist,dir);
    }
    if(!roaming){
        substate = track_substate;
    }
} else {
    substate = roam_substate;
}

script_execute(substate);

// move mob
if(place_meeting(x+hsp,y,o_obstacle)){
    while(!place_meeting(x+sign(hsp),y,o_obstacle)){
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

if(place_meeting(x,y+vsp,o_obstacle)){
    while(!place_meeting(x,y+sign(vsp),o_obstacle)){
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

