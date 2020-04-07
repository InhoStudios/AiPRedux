var nextRoom = argument[0];
var nextX = argument[1];
var nextY = argument[2];

with(objLevelManager) {
	toX = nextX;
	toY = nextY;
	toRoom = nextRoom;
	doTransition = true;
}