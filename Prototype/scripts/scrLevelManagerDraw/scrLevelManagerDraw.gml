draw_set_alpha(transitionAlpha);

if(doTransition) {
	if(transitionAlpha < 1.25) {
		transitionAlpha += delta;
	} else {
		scrDoTransition(toRoom, toX, toY);
		doTransition = false;
	}
} else {
	if(transitionAlpha > 0) transitionAlpha -= delta;
}
if(transitionAlpha > 0) {
	draw_rectangle_colour(0, 0, display_get_width(), display_get_height(), c_black, c_black, c_black, c_black, false);
}
draw_set_alpha(1);