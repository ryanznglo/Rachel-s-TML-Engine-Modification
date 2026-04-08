function CustomItem_Apron() : ItemTypeSimple("apron") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curArmor=Player_GetItemArmor();
		inventory.Set(index,curArmor);
		Player_SetItemArmor(ITEM_APRON);
		Player_SetDefItem(11);
//Heals 1 HP every other turn.
		audio_play_sound(snd_item_equip,0,false);
	}
}