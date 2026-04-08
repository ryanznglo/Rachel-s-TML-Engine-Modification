check = false;
checkGMOver = false;
_mode = Storage_GetInfo();

var temp = Storage_GetTempGeneral();
x = temp.Get(FLAG_TEMP_GAMEOVER_SOUL_X, 320);
y = temp.Get(FLAG_TEMP_GAMEOVER_SOUL_Y, 240);

audio_stop_all();

alarm[0] = 40;
