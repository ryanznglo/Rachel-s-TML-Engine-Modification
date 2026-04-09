///@desc Menu End

if(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())==_enemy_slot){

	switch(Battle_GetMenuChoiceButton()){
		case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
			//Check: is the enemy supposed to be dead?
			if(_hp<=0){
				//Create particle effect
				var inst=instance_create_depth(x,y,0,battle_death_particle);
				inst.sprite=sprite_index;
				audio_play_sound(snd_vaporize,0,false);
				instance_destroy();
			}
			break;
		
		case BATTLE_MENU_CHOICE_BUTTON.ACT:
			switch(Battle_GetMenuChoiceAction()){
				case 0:
					Dialog_Add("{voice 7}* SENBEI - AT 20 DF 5{sleep 10}&* What the FUCK is his problem?{pause}{clear}* First he tortures me, then&  this!?");
					break;
				
			}
			break;
	}
}
