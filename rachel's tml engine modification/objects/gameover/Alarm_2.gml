BGM_Play(0, bgm_gameover, true);
BGM_SetPitch(0, 0.96);

if (!instance_exists(gameover_header)) {
	var header = instance_create_depth(0,0,0, gameover_header);
		header.ready = 1;
}