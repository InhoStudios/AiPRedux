// get vertical and rolling input
if(input.key_dash){
    if(o_player_stats.stamina >= 3){
        image_index = 0;
        rolling = true;
        o_player_stats.stamina -= 3;
    }
}

if(vsp <= 21){
    vsp += grav;
}

if(input.key_jump && jumps > 0){
    vsp = -movespeed * 5;
    jumps -= 1;
    image_index = 0;
    image_speed = 1;
}

if(place_meeting(x, y + 1, o_solid)) {
    jumps = maxJumps;
} else if(vsp != 0 && !rolling){
	sprite_index = s_move;
	image_index = 2.5 + (1.5*sign(vsp));
}

/* movement */
// check vertical collisions and move character
if(place_meeting(x,y+vsp,o_solid)){
    while(!place_meeting(x,y+sign(vsp),o_solid)){
        y += sign(vsp);
    }
    // check the falling velocity, if above 10, roll
    if(vsp > 15){
        image_index = 0;
		rolling = true;
    }
    vsp = 0;
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
            hsp = movespeed * -roll_scale_factor;
            break;
        case RIGHT:
            hsp = movespeed * roll_scale_factor;
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
    if(!place_meeting(x, y - 1, o_solid)){
		sprite_index = s_move;
	    rolling = false;
	} else {
		image_index = 0;
	}
}

// movement animations
if(sprite_index != s_dj){
    image_speed = 1;
    if(hsp == 0 && place_meeting(x,y + 1, o_solid)){
        sprite_index = s_idle;
    } else {
        sprite_index = s_move;
    }
}

