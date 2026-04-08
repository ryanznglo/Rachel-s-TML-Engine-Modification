if (_perfect3 == 1) {
    switch (_ac3) {
        case 0: _aim_color3 = c_yellow; _ac3 = 1; break;
        case 1: _aim_color3 = c_red; _ac3 = 0; break;
        case 2: _aim_color3 = c_aqua; _ac3 = 2; break;

	}
} else {
    switch (_ac3) {
        case 0: _aim_color3 = c_aqua; _ac3 = 1; break;
        //case 1: _aim_color3 = c_red; _ac3 = 0; break;
    }
}
alarm[3] = 5;