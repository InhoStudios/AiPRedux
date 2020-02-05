hsp = lengthdir_x(movespeed,dir);
vsp = lengthdir_y(movespeed,dir);

if(place_meeting(x,y,o_solid)) instance_destroy();

x += hsp;
y += vsp;

if(place_meeting(x,y,o_entity)){
    entity = instance_nearest(x,y,o_entity)
    if(creator != entity.id){
        alarm[0] = 1;
    }
}

depth = -y;

