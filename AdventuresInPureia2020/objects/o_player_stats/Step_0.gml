/// @description  regen stat timers

// stamina regen timer
if(alarm[1] <= 0 && stamina < max_stamina){
    stamina++;
    alarm[1] = stamina_regen;
}

if(xp >= lvl_xp){
    // increment leve, then remove the xp (provides room for overflow) and increment the xp cap
    lvl++;
    xp -= lvl_xp;
    lvl_xp += 5;
    
    // level up
    hp = max_hp;
    stamina = max_stamina;
    o_player.atk++;
    max_stamina += 3;
    max_hp++;
    // specific level attributes
    switch(lvl){
        case 1:
            break;
    }
}

