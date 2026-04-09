function CustomItem_PocketKnife() : ItemTypeSimple("dagger") constructor{
	function GetName(){
		return "Pocket Knife";
	}
	function OnUse(inventory,index){
		Dialog_Add("");
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_POCKET_KNIFE);
		Player_SetBattleFightMenuObj(battle_menu_fight_knife);
		Player_SetAtkItem(15);

		audio_play_sound(snd_item_equip,0,false);
	}
	function OnInfo(inventory,index){
		Dialog_Add("* Pocket Knife - +15 ATK.{sleep 10}");
		Dialog_Start();
	}
}