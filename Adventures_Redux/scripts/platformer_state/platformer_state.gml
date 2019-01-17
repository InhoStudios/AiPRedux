// get vertical and rolling input
if(input.key_dash){
    if(o_player_stats.stamina >= 3){
        image_index = 0;
        rolling = true;
        o_player_stats.stamina -= 3;
    }
}

if(vsp <= 14){
    vsp += grav;
}

if(input.key_jump && jumps > 0){
    vsp = -movespeed * 3;
    jumps -= 1;
    image_index = 0;
    image_speed = 0.4;
    sprite_index = s_dj;
}

/* movement */
// check vertical collisions and move character
if(place_meeting(x,y+vsp,o_solid)){
    while(!place_meeting(x,y+sign(vsp),o_solid)){
        y += sign(vsp);
    }
    // check the falling velocity, if above 10, roll
    if(vsp > 10){
        image_index = 0;
        rolling = true;
    }
    vsp = 0;
    jumps = maxJumps;
}
y += vsp;

// horizontal input and movement
if(!rolling){
    hsp = movespeed * (input.key_right - input.key_left);
} else {
// roll
    sprite_index = s_dj;
    switch(face){
        case LEFT:
            hsp = movespeed * -1.5;
            break;
        case RIGHT:
            hsp = movespeed * 1.5;
            break;
    }
}

// check horizontal collisions and move character
if(place_meeting(x+hsp,y,o_solid)){
    while(!place_meeting(x+sign(hsp),y,o_solid)){
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

/* check for attacking */
// change states
if(input.key_attack){
    hit = false;
    state = attack_state;
    sprite_index = s_atk;
}

/* sprites and animations */
// get facing
if(hsp < 0)
    face = LEFT;
if(hsp > 0)
    face = RIGHT;
    
// set sprites (move, idle, atk)
switch(face){
    case LEFT:
        s_move = spr_player_left_move;
        s_idle = spr_player_left_idle;
        s_atk = spr_player_left_atk;
        s_dj = spr_player_r_j_left;
        break;
    case RIGHT:
        s_move = spr_player_right_move;
        s_idle = spr_player_right_idle;
        s_atk = spr_player_right_atk;
        s_dj = spr_player_r_j_right;
        break;
}

if(image_index = image_number - 1 && sprite_index = s_dj){
    sprite_index = s_move;
    rolling = false;
}

// movement animations
if(sprite_index != s_dj){
    image_speed = 0.25;
    if(hsp == 0){
        sprite_index = s_idle;
    } else {
        sprite_index = s_move;
    }
}

