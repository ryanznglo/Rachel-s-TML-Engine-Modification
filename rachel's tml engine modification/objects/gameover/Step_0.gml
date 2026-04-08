if (check){
    if (!instance_exists(text_typer)) {
        gameover_header.ready = 0;
        BGM_SetVolume(0, 0, 135);
    }
}
if (checkGMOver){
    var sinfo = Storage_GetInfo();
    _mode = sinfo.IsFileExists() ? 1 : 0;
    if (_mode == 0) { //This is done if the game hasn't been saved. You can do whatever you want here.
        // without save - return to the starting room and restore HP
        BGM_Stop(0);
        room_goto(room_area_0);//you can change that
        Player_SetHp(Player_GetHpMax());
    }else{
        var roomName = Storage_GetStaticGeneral().Get(FLAG_STATIC_ROOM, "");
        var roomIndex = asset_get_index(roomName);
        Storage_LoadGame();

        if (!room_exists(roomIndex)) roomIndex = -1;
        if (room_exists(roomIndex)) room_goto(roomIndex);
    }
    BGM_Stop(0);
    fader.alpha = 1;
    global._death_reset = true;
    Fader_Fade(-1, 0, 20);
}
