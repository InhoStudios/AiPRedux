// destroy wings
if(hp <= 0){
    with(wings){
        instance_destroy();
    }
}

event_inherited();

depth = -y - height;

script_execute(state);

/* code for wings */
// follow
if(instance_exists(wings)){
    wings.x = x;
    wings.y = y;

//depth
    wings.depth = depth + 1;
}

// spriting
//switch(face);

/* */
/*  */
