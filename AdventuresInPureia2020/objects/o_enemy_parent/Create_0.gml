/// @description  CREATE EVENT: Needs bounds, atk_range, atk_script, atk_speed, roam, o_obstacle, hsp, vsp, movespeed
// alarms needed: alarm[0] (roam alarm), alarm[1] (attack alarm)

event_inherited();

hsp = 0;
vsp = 0;
state = enemy_state;
start_state = state;
face = DOWN;
hp = 0;
if(instance_exists(o_player)) o_target = instance_nearest(x,y,o_player);

enum EnemyInfo{
    State,
    X,
    Y,
    HP,
    Target_Object,
    Column_Count
}

enum States{
    Enemy_State,
    Dead_State,
    Already_Dead
}

State = States.Enemy_State;

key = save_data_get_key();

var _enemy = ds_grid_create(EnemyInfo.Column_Count,1);

_enemy[# EnemyInfo.State,1] = State;
_enemy[# EnemyInfo.X,1] = x;
_enemy[# EnemyInfo.Y,1] = y;
_enemy[# EnemyInfo.HP,1] = hp;
_enemy[# EnemyInfo.Target_Object,1] = object_get_name(o_target);

var _save_data = save_data_get_value(key);

if(!is_undefined(_save_data)){
    var _grid_str = game.save_data[? key];
    if(_grid_str == undefined) exit;
    ds_grid_read(_enemy,_grid_str);
    x = _enemy[# EnemyInfo.X, 1];
    y = _enemy[# EnemyInfo.Y, 1];
    hp = _enemy[# EnemyInfo.HP, 1];
    State = _enemy[# EnemyInfo.State, 1];
}

ds_grid_destroy(_enemy);




