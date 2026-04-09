function Player_CustomInitialData(){
	Player_SetName("Timber");
	Player_SetLv(15);
	Player_SetHpMax(76);
	Player_SetHp(76);
	Player_SetAtk(28);
	Player_SetDef(3);
	Player_SetSpd(2.5);
	Player_SetInv(40);
	Player_SetBattleFightMenuObj(battle_menu_fight_knife);
	
	var items=Item_GetInventoryItems();
	
	var phones=Item_GetInventoryPhones();
	//phones.Add(ITEM_PHONE_TML);
	
	Player_SetItemWeapon(ITEM_POCKET_KNIFE);
	Player_SetItemArmor(ITEM_NECK_BANDAGE);
}