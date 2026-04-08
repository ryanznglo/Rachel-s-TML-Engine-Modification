function CustomItem_Tutu() : ItemTypeSimple("tutu") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curArmor=Player_GetItemArmor();
		inventory.Set(index,curArmor);
		Player_SetItemArmor(ITEM_TUTU);
		Player_SetDefItem(10);
	
		audio_play_sound(snd_item_equip,0,false);
	}
}