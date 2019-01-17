// projectile atk script;

if(!hit){
    arrow = instance_create(x,y,o_projectile);
    arrow.creator = id;
    arrow.damage = atk_damage;
    arrow.kb_scale = atk_kb_scale;
    arrow.o_target = o_target;
    hit = true;
}

if(image_index = image_number - 1){
    hit = false;
    state = start_state;
}
