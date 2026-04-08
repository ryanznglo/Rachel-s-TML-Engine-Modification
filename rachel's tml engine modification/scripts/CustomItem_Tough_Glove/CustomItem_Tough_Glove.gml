function CustomItem_Tough_Glove() : ItemTypeSimple("tough_glove") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_TOUGH_GLOVE);
	Player_SetBattleFightMenuObj(battle_menu_fight_glove);
//50G,51G,65G
		Player_SetAtkItem(5);

		audio_play_sound(snd_item_equip,0,false);
	}
}