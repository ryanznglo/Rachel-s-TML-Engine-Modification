function Attack_Example(_t) {

    if (_t == 0) {
        for (var i = 0; i < 8; i++) {
            CreateBone(Board_X(DIR.LEFT) - i * 40, Board_Y(DIR.DOWN), 75, 3, 0, 0);
        }
    }

    if (_t == 240) {
        Attack_End();
    }
}