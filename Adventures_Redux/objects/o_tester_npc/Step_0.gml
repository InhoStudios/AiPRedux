interact.x = x;
interact.y = y;

depth = -y;

var option = interact.option;

if(input.mouse_left_p){
    switch(option){
        case "yes":
            if(instance_exists(o_player_stats) && o_player_stats.aeri >= 1){
                o_player_stats.aeri--;
                o_player_stats.hp = o_player_stats.max_hp;
                o_player.hp = o_player_stats.max_hp;
            }
            break;
        case "no":
            break;
    }
    if(interact.index >= interact.maxTxt){
        interact.interacting = false;
        interact.index = 0;
    } else {
        interact.index++;
    }
}

