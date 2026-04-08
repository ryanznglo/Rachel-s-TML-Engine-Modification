function CustomItem_Shoes() : ItemTypeSimple("shoes") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_SHOES);
		Player_SetBattleFightMenuObj(battle_menu_fight_shoes);

		Player_SetAtkItem(7);

		audio_play_sound(snd_item_equip,0,false);
	}
}