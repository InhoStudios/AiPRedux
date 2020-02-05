if(other.creator != id){
    hp -= other.damage;
    
    var px = x, py = y, ex = other.x, ey = other.y;
    scale = other.kb_scale;
    image_blend = c_red;
    alarm[10] = room_speed / 3;
    
    // knockback
    dir = point_direction(ex,ey,px,py);
    
    hsp = lengthdir_x(scale, dir);
    vsp = lengthdir_y(scale, dir);
    state = knockback;
}

