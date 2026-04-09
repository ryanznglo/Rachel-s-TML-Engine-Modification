function CustomItem_NeckBandage() : ItemTypeSimple("bandages") constructor{
	function GetName(){
		return "Neck Bandage";
	}
	function OnUse(inventory,index){
		Dialog_Add("* You reapplied the bandages.");
		Dialog_Start();

		var curArmor=Player_GetItemArmor();
		inventory.Set(index,curArmor);
		Player_SetItemArmor(ITEM_NECK_BANDAGE);

		Player_SetDefItem(5);

		audio_play_sound(snd_item_equip,0,false);
	}
}