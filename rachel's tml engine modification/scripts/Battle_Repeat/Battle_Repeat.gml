function Battle_Repeat(start, stop, interval = 1){
    if instance_exists(battle_turn)
        return (battle_turn.timer == clamp(battle_turn.timer, start, stop) && (battle_turn.timer - start) % interval == 0);
    else
        return false;
}