function CustomItem_CowboyHat() : ItemTypeSimple("cowboyhat") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curArmor=Player_GetItemArmor();
		inventory.Set(index,curArmor);
		Player_SetItemArmor(ITEM_COWBOYHAT);

		Player_SetDefItem(12);
		Player_SetAtkItem(5);

		audio_play_sound(snd_item_equip,0,false);
	}
}