function CustomItem_WornDagger() : ItemTypeSimple("dagger") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_WORN_DAGGER);
		Player_SetBattleFightMenuObj(battle_menu_fight_knife);
		Player_SetAtkItem(15);

		audio_play_sound(snd_item_equip,0,false);
	}
}