if(place_meeting(x,y,o_player) && instance_exists(o_player_stats) && o_player_stats.lvl >= warp_level){
    o_player.x = n_x;
    o_player.y = n_y;
    room_goto(n_rm);
    if(instance_exists(view)){
        view.x = n_x;
        view.y = n_y;
    }
}

