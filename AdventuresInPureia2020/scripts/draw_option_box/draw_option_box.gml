buttony = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 48;
yesx = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2) - 48;
nox = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2) + 48;
buttonw = 28;
buttonh = 12;
// draw yes button
draw_set_colour(c_black);
draw_set_alpha(0.5);
if(mouse_over(yesx,yesx + buttonw,buttony,buttony + buttonh)){
    draw_set_colour(c_gray);
    option = "yes"
}
draw_rectangle(yesx, buttony, yesx + buttonw, buttony + buttonh, false);

// draw no button
draw_set_colour(c_black);
if(mouse_over(nox - buttonw,nox,buttony,buttony + buttonh)){
    draw_set_colour(c_gray);
    option = "no"
}
draw_rectangle(nox - buttonw, buttony, nox, buttony + buttonh, false);

draw_set_colour(c_white);
draw_set_alpha(1);

// draw text
draw_set_font(fnt_text);
draw_text(yesx + 8, buttony + 1, string_hash_to_newline("Yes"));
draw_text(nox - buttonw + 8, buttony + 1, string_hash_to_newline("No"));
draw_set_font(fnt_normal);
