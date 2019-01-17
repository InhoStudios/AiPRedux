var px = 0, py = 0;
if(instance_exists(o_target)){
    px = o_target.x
    py = o_target.y
}

if(x > px - atk_range && x < px + atk_range && y > py - atk_range && y < py + atk_range){
    hsp = 0;
    vsp = 0;
    if(alarm[1] <= 0){
        alarm[1] = atk_speed;
    }
    if(alarm[1] == atk_speed/2){
        script_execute(atk_script);
    }
} else {
    dir = point_direction(x,y,px,py);
    hsp = lengthdir_x(movespeed, dir);
    vsp = lengthdir_y(movespeed, dir);
    get_face(dir);
}
