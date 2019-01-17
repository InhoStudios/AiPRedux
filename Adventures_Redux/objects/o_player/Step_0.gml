script_execute(state);

// set player-stats obj to have same HP as players
var stats = instance_exists(o_player_stats);

if(stats){
    o_player_stats.hp = hp;
}

// item collision checks
if(place_meeting(x,y,o_xp_orb)){
    // destroy xp orb
    var orb = instance_nearest(x,y,o_xp_orb);
    with(orb) instance_destroy();
    
    // increment xp
    if(stats) o_player_stats.xp++;
}

if(place_meeting(x,y,o_aeris)){
    var coin = instance_nearest(x,y,o_aeris);
    with(coin) instance_destroy();
    
    if(stats) o_player_stats.aeri++;
}

if(hp <= 0){
    room_goto(rm_tavern);
}

