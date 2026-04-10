function Attack_Run(_input) {

    var _func = noone;

    if (is_string(_input)) {
        if (ds_map_exists(global.attack_registry, _input)) {
            _func = global.attack_registry[? _input];
        }
    }
    else {
        _func = _input;
    }

    if (_func == noone) {
        show_debug_message("Attack_Run failed: invalid attack");
        return;
    }

    global.current_attack = {
        func  : _func,
        timer : 0
    };
}