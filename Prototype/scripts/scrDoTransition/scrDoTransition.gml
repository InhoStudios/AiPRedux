var nextRoom = argument[0];
var nextX = argument[1];
var nextY = argument[2];

if(nextRoom == noone) exit;

room_goto(nextRoom);

with(objPlayer) {
	x = nextX;
	y = nextY;
}