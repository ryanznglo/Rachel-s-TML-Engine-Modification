function Delay_Event(_func, _delay, _arguments = [], _inst = id) {
    // Ensure the array exists
    if (!variable_instance_exists(_inst, "time_sources")) {
        _inst.time_sources = [];
    }

    var _time_source;

    // Wrapped callback that cleans itself
    var _wrapped = function() {
        // Run original function
        script_execute_ext(_func, _arguments);

        // Remove this time source from the array
        var _index = array_index_of(_inst.time_sources, _time_source);
        if (_index != -1) {
            array_delete(_inst.time_sources, _index, 1);
        }

        // Destroy the time source (extra safety)
        time_source_destroy(_time_source);
    };

    _time_source = time_source_create(
        time_source_game,
        _delay,
        time_source_units_frames,
        _wrapped,
        [],
        1
    );

    time_source_start(_time_source);
    array_push(_inst.time_sources, _time_source);

    return _time_source;
}

/*

// example script :3

function SayHello(_name) {
    show_debug_message("Hello " + _name);
}

Delay_Event(SayHello, 60, ["Rachel"]);

*/
