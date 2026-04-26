function Attack_Example(_t){
    if (_t == 0) {
		Board.Size.SetSize(65, 65, 100, 100)
	}
	
	if Battle_Repeat(30, 480, 240, 0, _t) {
		BoneStab(DIR.LEFT, 100, 130)
	}
	
	if Battle_Repeat(30, 480, 240, 120, _t) {
		BoneStab(DIR.RIGHT, 100, 130)
	}
	
	if Battle_Repeat(30, 480, 120, 0, _t) {
		var _bone = CreateBone(Board_X(DIR.LEFT), Board_Y(DIR.DOWN), 0, 2, 0, 0, false, 0, c_aqua);
		Anim_Create(_bone, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _bone.length, 130, 30)
	}
	
	if Battle_Repeat(30, 480, 120, 60, _t) {
		var _bone = CreateBone(Board_X(DIR.RIGHT), Board_Y(DIR.DOWN), 0, -2, 0, 0, false, 0, c_orange);
		Anim_Create(_bone, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _bone.length, 130, 30)
	}
	
    if (_t == 480) {
        Attack_End();
    }
}