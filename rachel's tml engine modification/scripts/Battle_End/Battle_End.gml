function Battle_End() {
	var room_return=Storage_GetTempGeneral().Get(FLAG_TEMP_BATTLE_ROOM_RETURN);
	if(!room_exists(room_return)){
		show_message($"Room to return doesn't exist: {room_return}!");
		return false;
	}
	
	fader.alpha=1;
	room_goto(room_return);
	Fader_Fade(-1,0,20);
	BGM_Resume(0);
	BGM_SetVolume(0,0);
	BGM_SetVolume(0,1,50);
	
	// quality of life change, when exiting the battle
	// you get sent to where you originally came from 
	// and not at the landmark you were at.
	
	with (world) {
		alarm[0] = 1
	}
	
	return true;
}
