if(scrCheckColAll(1, objLevelCollidable)) {
	var trans = instance_nearest(x,y,objLevelCollidable);
	with(trans) {
		scrStartTransition(toRoom, toX, toY);
	}
}

if(keyboard_check_pressed(ord("E")) && scrCheckColAll(1, objLevelInteractable)) {
	var trans = instance_nearest(x,y,objLevelInteractable);
	with(trans) {
		scrStartTransition(toRoom, toX, toY);
	}
}