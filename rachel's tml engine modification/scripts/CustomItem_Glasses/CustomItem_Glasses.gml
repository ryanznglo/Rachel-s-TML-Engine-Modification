function CustomItem_Glasses() : ItemTypeSimple("glasses") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curArmor=Player_GetItemArmor();
		inventory.Set(index,curArmor);
		Player_SetItemArmor(ITEM_GLASSES);

		Player_SetDefItem(5);
		if Player_GetItemWeapon() = ITEM_NOTEBOOK{
			Player_SetInvItem(15)
		}else{
				Player_SetInvItem(9)
		}
		audio_play_sound(snd_item_equip,0,false);
	}
}