if(keyboard_check_pressed(ord("E")) && !draw_inv){
    draw_inv = true;
    return 0;
}
if(keyboard_check_pressed(ord("E")) && draw_inv){
    draw_inv = false;
    spr = blank;
    return 0;
}

