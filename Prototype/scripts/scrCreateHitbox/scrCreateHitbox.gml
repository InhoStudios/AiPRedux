//scrCreateHitBox(x,y,assignedObj,sprite);


var xPos = argument0;
var yPos = argument1;
var assignedObj = argument2;
var sprite = argument3;
var damage = argument4;

var hitbox = instance_create_layer(xPos,yPos,"Instances", objHitBox);
hitbox.sprite_index = sprite;
hitbox.assignedObj = assignedObj;
hitbox.damageDelt = damage;
