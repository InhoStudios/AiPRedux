xplus = 0;

switch(face){
    case RIGHT:
        xplus = 1;
        break;
    case LEFT:
        xplus = 0;
        break;
    case UP:
    case DOWN:
        xplus = 0;
        break;
}

draw_sprite(spr_player_shadow,image_index,x + xplus,y);
draw_self();

