event_inherited();

height = 16;

/*************************************
* Mob Stats: movespeed, damage, health
*************************************/

movespeed = 1;
atk_damage = 1;
atk_kb_scale = 6;
hp = 10;

/// CREATE EVENT: Needs bounds, atk_range, atk_script, atk_speed, roam, o_obstacle, hsp, vsp, movespeed
// alarms needed: alarm[0] (roam alarm), alarm[1] (attack alarm)

// movement and stuff

alarm[0] = -1;
alarm[1] = -1;

bounds = 150;
atk_range = 64;
atk_speed = room_speed * 2;
atk_script = enem_range_atk;
roam = false;
o_obstacle = o_solid;

wings = instance_create(x,y,o_tseint_wings);

hit = false;

o_projectile = o_arrow;

/* */
/*  */
