function Battle_Repeat(start, stop, interval = 1, _offset = 0, _t){
    if instance_exists(battle_turn)
        return (_t == clamp(_t, start, stop) && (_t - start) % interval == _offset);
    else
        return false;
}