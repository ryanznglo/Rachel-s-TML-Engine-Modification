///@arg damage
function Player_Hurt() {
	var DAMAGE=argument[0];

	if(DAMAGE>=0){
		var HP=Storage_GetStaticGeneral().Get(FLAG_STATIC_HP);
		Storage_GetStaticGeneral().Set(FLAG_STATIC_HP,(HP-DAMAGE>=0 ? HP-DAMAGE : 0));
		return true;
	}else{
		return Player_Heal(-DAMAGE);
	}


}
