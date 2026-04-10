if (script_queue != -1) {

    var _scr = script_queue;
    var _args = script_args;

    script_queue = -1;
    script_args = [];

    switch (array_length(_args)) {
        case 0: script_execute(_scr); break;
        case 1: script_execute(_scr, _args[0]); break;
        case 2: script_execute(_scr, _args[0], _args[1]); break;
        case 3: script_execute(_scr, _args[0], _args[1], _args[2]); break;
    }
}