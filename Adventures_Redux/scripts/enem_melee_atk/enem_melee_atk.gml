// attack_state();

// create damage and set id
if(!hit){
    dmg = instance_create(x,y,o_damage);
    dmg.image_index = face;
    dmg.creator = id;
    dmg.damage = atk_damage;
    dmg.kb_scale = atk_kb_scale;
    hit = true
}

// animation end, switch to move state
if(image_index = image_number - 1){
    hit = false;
    state = start_state;
}
