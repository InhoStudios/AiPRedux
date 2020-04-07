
//TEMP
if( instance_exists(objPlayer) && !instance_exists(objCamera))
instance_create_depth(objPlayer.x,objPlayer.y,0,objCamera);

//
room_speed = 60;


// load room and instances
scrLoadRoom();