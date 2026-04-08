
if (_perfect == 1) {
    switch (_ac) {
        case 0: _aim_color = c_yellow; _ac = 1; break;
        case 1: _aim_color = c_red; _ac = 2; break;
        case 2: _aim_color = c_aqua; _ac = 0; break;
    }
} else {
    switch (_ac) {
        case 0: _aim_color = c_aqua; _ac = 1; break;
        //case 1: _aim_color = c_red; _ac = 0; break;
    }
}
alarm[0] = 5;
