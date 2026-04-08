function CustomItem_RealKnife() : ItemTypeSimple("real_knife") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Lang_GetString("item.real_knife.equip"));
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_REAL_KNIFE);
		Player_SetBattleFightMenuObj(battle_menu_fight_knife);

		Player_SetAtkItem(99);

		audio_play_sound(snd_item_equip,0,false);
	}
}