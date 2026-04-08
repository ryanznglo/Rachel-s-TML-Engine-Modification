function CustomItem_Mandanna() : ItemTypeSimple("mandanna") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curArmor=Player_GetItemArmor();
		inventory.Set(index,curArmor);
		Player_SetItemArmor(ITEM_MANDANA);
		Player_SetDefItem(7);
	
		audio_play_sound(snd_item_equip,0,false);
	}
}