
if (_perfect2 == 1) {
    switch (_ac2) {
        case 0: _aim_color2 = c_yellow; _ac2 = 1; break;
        case 1: _aim_color2 = c_red; _ac2 = 0; break;
        case 2: _aim_color2 = c_aqua; _ac2 = 2; break;

	}
} else {
    switch (_ac2) {
        case 0: _aim_color2 = c_aqua; _ac2 = 1; break;
       // case 1: _aim_color2 = c_red; _ac2 = 0; break;
    }
}
alarm[2] = 5;
