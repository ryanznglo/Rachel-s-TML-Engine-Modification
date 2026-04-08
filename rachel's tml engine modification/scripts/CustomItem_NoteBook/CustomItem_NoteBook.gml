function CustomItem_NoteBook() : ItemTypeSimple("notebook") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_NOTEBOOK);
	Player_SetBattleFightMenuObj(battle_menu_fight_notebook);
//Sell 50G, 51G, 65G
		Player_SetAtkItem(2);
if Player_GetItemArmor() = ITEM_GLASSES{
			Player_SetInvItem(15)
		}else{
			Player_SetInvItem(6)

		}
		audio_play_sound(snd_item_equip,0,false);
	}
}