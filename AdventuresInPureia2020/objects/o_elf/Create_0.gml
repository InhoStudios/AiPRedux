event_inherited();

// MOB STATS

movespeed = 1.5;
hp = 10;
atk_damage = 1;
atk_kb_scale = 4;

/// CREATE EVENT: Needs bounds, atk_range, atk_script, atk_speed, roam, o_obstacle, hsp, vsp, movespeed
// alarms needed: alarm[0] (roam alarm), alarm[1] (attack alarm)

// movement and stuff

alarm[0] = -1;
alarm[1] = -1;

bounds = 64;
atk_range = 16;
atk_speed = room_speed;
atk_script = enem_melee_atk;
roam = false;
o_obstacle = o_solid;


