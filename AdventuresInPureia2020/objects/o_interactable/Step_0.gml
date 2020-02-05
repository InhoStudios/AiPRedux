if(instance_exists(o_player)){
    // check if in range of player
    if(check_bounds(o_player,interact_radius) && input.key_interact){
        if(interacting && index >= maxTxt){
            interacting = false;
            index = 0;
        } else {
            interacting = true;
            index++;
            return 0;
        }
    }
}

// keep talking even if moved out of range
if(index > 0 && input.key_interact){
    index++;
    if(index > maxTxt){
        interacting = false;
        index = 0;
    }
}

// if completely out of frame, discontinue conversation
if(x < __view_get( e__VW.XView, 0 ) || x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) || y < __view_get( e__VW.YView, 0 ) || y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )){
    interacting = false;
    index = 0;
}

// check if hovering over option box
var buttony = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 48;
var yesx = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2) - 48;
var nox = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2) + 48;
var buttonw = 28;
var buttonh = 12;

if(index == optionBoxIndex){
    if(!mouse_over(yesx,yesx + buttonw,buttony,buttony + buttonh) && !mouse_over(nox - buttonw,nox,buttony,buttony + buttonh)){
        option = "noone";
    }
}

