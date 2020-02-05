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

hsp = hsp * 0.75;
vsp = vsp * 0.75;
