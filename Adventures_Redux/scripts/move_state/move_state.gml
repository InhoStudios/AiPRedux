// get [SHIFT] roll
if(instance_exists(o_player_stats) && o_player_stats.stamina >= 3){
    if(input.key_dash){
        image_index = 0;
        sprite_index = s_roll;
        roll_h = hsp;
        roll_v = vsp;
        state = roll_state;
        o_player_stats.stamina -= 3;
    }
}

// movement rework
dir = point_direction(0,0,input.haxis,input.vaxis);

if(input.haxis == 0 && input.vaxis == 0){
    len = 0;
} else {
    len = movespeed;
    get_face(dir);
}

// get horizontal / vertical movespeeds and dir

hsp = lengthdir_x(len,dir);
vsp = lengthdir_y(len,dir);

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

/* check for attacking */
// change states
if(input.key_attack){
    hit = false;
    sprite_index = s_atk;
    image_index = 0;
    state = attack_state;
}

/* sprites and animations */
    
// set sprites (move, idle, atk)
switch(face){
    case UP:
        s_move = spr_player_up_move;
        s_idle = spr_player_up_idle;
        s_atk = spr_player_up_atk;
        s_roll = spr_player_r_j_right;
        break;
    case DOWN:
        s_move = spr_player_down_move;
        s_idle = spr_player_down_idle;
        s_atk = spr_player_down_atk;
        s_roll = spr_player_r_j_left;
        break;
    case LEFT:
        s_move = spr_player_left_move;
        s_idle = spr_player_left_idle;
        s_atk = spr_player_left_atk;
        s_roll = spr_player_r_j_left;
        break;
    case RIGHT:
        s_move = spr_player_right_move;
        s_idle = spr_player_right_idle;
        s_atk = spr_player_right_atk;
        s_roll = spr_player_r_j_right;
        break;
}
// movement animations
image_speed = 0.25;
if(vsp == 0 && hsp == 0){
    sprite_index = s_idle;
} else {
    sprite_index = s_move;
}

// set depth
depth = -y;

