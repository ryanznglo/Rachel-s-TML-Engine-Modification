function CustomItem_EmptyGun() : ItemTypeSimple("gun") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_GUN);

		Player_SetAtkItem(12);

		audio_play_sound(snd_item_equip,0,false);
	}
}