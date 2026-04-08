function Item_Custom(){
	{
		// Register item types here.
		var itemTypes=Item_GetTypeManager();
	
		// To create an item type, you need to first write code for your item type.
		// See CustomItem_Dice for more information.
		// We created an example item type "Dice" there.
	
		// After creating an item type, you need to register it to let the game know.
		// Item type id must be unique.
	
		// It's good practice to define a macro to make an alias for item type id.
		// This helps you reference the item type id more quickly and eliminate potential typos.
		#macro ITEM_DICE "dice"
		itemTypes.Register(ITEM_DICE, new CustomItem_Dice());
	
		// See CustomItem_Stick for help of ItemTypeSimple, a helper item base code.
		#macro ITEM_STICK "stick"
		itemTypes.Register(ITEM_STICK, new CustomItem_Stick());
	
		// See CustomItem_Bandage for healing item example.
		#macro ITEM_BANDAGE "bandage"
		itemTypes.Register(ITEM_BANDAGE, new CustomItem_Bandage());
		
		// See CustomItem_ToyKnife for help of equippable weapon.
		#macro ITEM_TOY_KNIFE "toy_knife"
		itemTypes.Register(ITEM_TOY_KNIFE, new CustomItem_ToyKnife());
	
		// See CustomItem_FadedRibbon for help of equippable armor.
		#macro ITEM_FADED_RIBBON "faded_ribbon"
		itemTypes.Register(ITEM_FADED_RIBBON, new CustomItem_FadedRibbon());
		
		// See CustomItem_PhoneTML for phone item example.
		#macro ITEM_PHONE_TML "phone_tml"
		itemTypes.Register(ITEM_PHONE_TML, new CustomItem_Phone_TML());
		
		#macro ITEM_TOUGH_GLOVE "tough_glove"
		itemTypes.Register(ITEM_TOUGH_GLOVE, new CustomItem_Tough_Glove());

		#macro ITEM_BURNT_PAN "burnt_pan"
		itemTypes.Register(ITEM_BURNT_PAN, new CustomItem_Burnt_Pan());

		#macro ITEM_NOTEBOOK "notebook"
		itemTypes.Register(ITEM_NOTEBOOK, new CustomItem_NoteBook());

		#macro ITEM_REAL_KNIFE "real_knife" 
		itemTypes.Register(ITEM_REAL_KNIFE, new CustomItem_RealKnife()); 

		#macro ITEM_WORN_DAGGER "dagger" 
		itemTypes.Register(ITEM_WORN_DAGGER, new CustomItem_WornDagger()); 

		#macro ITEM_SHOES "shoes" 
		itemTypes.Register(ITEM_SHOES, new CustomItem_Shoes()); 

		#macro ITEM_GUN "gun" 
		itemTypes.Register(ITEM_GUN, new CustomItem_EmptyGun()); 


		#macro ITEM_COWBOYHAT "cowboyhat" 
		itemTypes.Register(ITEM_COWBOYHAT, new CustomItem_CowboyHat()); 

		#macro ITEM_APRON "apron" 
		itemTypes.Register(ITEM_APRON, new CustomItem_Apron()); 

		#macro ITEM_GLASSES "glasses" 
		itemTypes.Register(ITEM_GLASSES, new CustomItem_Glasses()); 

		#macro ITEM_TUTU "tutu" 
		itemTypes.Register(ITEM_TUTU, new CustomItem_Tutu()); 

		#macro ITEM_MANDANA "mandanna" 
		itemTypes.Register(ITEM_MANDANA, new CustomItem_Mandanna());
	
	}
	
	
	
	{
		// Register item types and inventories here.
		// Don't add items to inventories! Those are done in Player_CustomInitialData.
		var inventories=Item_GetInventoryManager();
	
		// After registering inventories, It's recommended to
		// create a function to quickly get these inventories.
		// See Inventory_GetFor___() below.
		inventories.Register("items",new Inventory(itemTypes,8));
		inventories.Register("phones",new Inventory(itemTypes,8));
		inventories.Register("box1",new Inventory(itemTypes,10));
		inventories.Register("box2",new Inventory(itemTypes,10));
	}
}

function Item_GetInventoryItems(){
	return Item_GetInventoryManager().Get("items");
}
function Item_GetInventoryPhones(){
	return Item_GetInventoryManager().Get("phones");
}
function Item_GetInventoryBoxes(index){
	var boxId="box1";
	switch(index){
		case 0:
			boxId="box1";
		case 1:
			boxId="box2";
	}
	return Item_GetInventoryManager().Get(boxId);
}