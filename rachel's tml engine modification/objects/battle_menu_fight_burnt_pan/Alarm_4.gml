if (_perfect4 == 1) {
    switch (_ac4) {
        case 0: _aim_color4 = c_yellow; _ac4 = 1; break;
        case 1: _aim_color4 = c_red; _ac4 = 0; break;
        case 2: _aim_color4 = c_aqua; _ac4 = 2; break;

	}
} else {
    switch (_ac4) {
        case 0: _aim_color4 = c_aqua; _ac4 = 1; break;
        //case 1: _aim_color4 = c_red; _ac4 = 0; break;
    }
}
alarm[4] = 5;