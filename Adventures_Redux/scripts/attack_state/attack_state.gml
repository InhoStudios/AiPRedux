// attack_state();

sprite_index = s_atk;

// create damage and set id
if(!hit){
    dmg = instance_create(x,y,o_damage);
    dmg.image_index = face;
    dmg.creator = id;
    dmg.damage = atk;
    dmg.kb_scale = 6;
    hit = true
}

// animation end, switch to move state
if(image_index = image_number - 1){
    state = start_state;
}
