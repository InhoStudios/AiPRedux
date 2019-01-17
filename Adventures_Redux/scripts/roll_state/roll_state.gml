sprite_index = s_roll;

// use new direction code
var dir = point_direction(0,0,roll_h,roll_v);
var len = movespeed * 2;

// get hsp and vsp using direction
if(roll_h != 0 || roll_v != 0){
    hsp = lengthdir_x(len,dir);
    vsp = lengthdir_y(len,dir);
} else {
    switch(face){
        case UP:
            vsp = -2 * movespeed;
            break;
        case DOWN:
            vsp = 2 * movespeed;
            break;
        case LEFT:
            hsp = -2 * movespeed;
            break;
        case RIGHT:
            hsp = 2*movespeed;
            break;
    }
}
/* movement */
// check horizontal collisions and move character
if(place_meeting(x+hsp,y,o_solid)){
    while(!place_meeting(x+sign(hsp),y,o_solid)){
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// check vertical collisions and move character
if(place_meeting(x,y+vsp,o_solid)){
    while(!place_meeting(x,y+sign(vsp),o_solid)){
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

if(image_index >= image_number - 1){
    state = move_state;
}
