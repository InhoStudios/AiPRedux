if(hp <= 0){
    state = dead_state;
}

switch(state){
    case enemy_state:
        State = States.Enemy_State;
        break;
    case dead_state:
        State = States.Dead_State;
        break;
}

if(State == States.Already_Dead){
    var _enemy = ds_grid_create(EnemyInfo.Column_Count,1);

    _enemy[# EnemyInfo.State,1] = State;
    _enemy[# EnemyInfo.X,1] = x;
    _enemy[# EnemyInfo.Y,1] = y;
    _enemy[# EnemyInfo.HP,1] = hp;
    _enemy[# EnemyInfo.Target_Object,1] = object_get_name(o_target);
    
    ds_map_replace(game.save_data,key,ds_grid_write(_enemy));
    
    ds_grid_destroy(_enemy);

    instance_destroy();
}

