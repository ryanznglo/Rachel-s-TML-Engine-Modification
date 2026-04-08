///@desc Anim
if(Battle_GetMenuFightDamage() >= 0) {
    var ENEMY = Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
    var X = Battle_GetEnemyCenterPosX(ENEMY);
    var Y = Battle_GetEnemyCenterPosY(ENEMY);
    var star = instance_create_depth(X,Y,0,battle_menu_fight_anim_empty_gun_star);
    if (_perfect && _perfect2  && _perfect3 || _perfect2 && _perfect3 && _perfect4 || _perfect && _perfect3 && _perfect4 || _perfect && _perfect2 && _perfect4) {
        star.image_blend = c_yellow;
        Play_delay(5,snd_perfecthit,0)
    }

}
