function Battle_CheckMissed(_aim_x_val, _missed_flag, _alpha_name, hit_number) { //idk it's comfortable for me
    if _missed_flag
    return false;
    
	border_ = (_dir == DIR.LEFT) ? battle_board.x - battle_board.left + 200 - sprite_get_width(spr_battle_menu_fight_aim)/2: battle_board.x + battle_board.right - 200 + sprite_get_width(spr_battle_menu_fight_aim)/2;
	crossed = (_dir == DIR.LEFT) ? (_aim_x_val <= border_) : (_aim_x_val >= border_);
    if crossed{
        _currenthit = hit_number;
        Anim_Destroy(id, _alpha_name);
        Anim_Create(id, _alpha_name, ANIM_TWEEN.LINEAR,ANIM_EASE.IN, 1, -1, 15);
        return true;
    }

   return false;
}
