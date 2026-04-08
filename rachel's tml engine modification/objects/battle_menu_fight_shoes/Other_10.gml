///@desc Anim
if(Battle_GetMenuFightDamage()>=0){
	var ENEMY=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
	var X=Battle_GetEnemyCenterPosX(ENEMY);
	var Y=Battle_GetEnemyCenterPosY(ENEMY);
	var shoes = instance_create_depth(X,Y,0,battle_menu_fight_anim_shoes);
	if _perfect && _perfect2 or _perfect && _perfect3 or _perfect2 && _perfect3{
		shoes.image_blend=c_yellow;
		
		Play_delay(25,snd_perfecthit,0)
	}
}