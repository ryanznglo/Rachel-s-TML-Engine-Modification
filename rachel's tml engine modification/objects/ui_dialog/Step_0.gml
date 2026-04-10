//show_debug_message("INST CHECK = " + string(_inst) + " exists=" + string(instance_exists(_inst)));

if (!instance_exists(_inst) || _inst == noone)
{
    if (!Dialog_IsEmpty()) {

        var _txt = "IM LOSING MY FUCKING SHIT"
		show_debug_message(_txt)

        _inst = instance_create_depth(
            60,
            (_top ? 30 : 340),
            0,
            text_typer
        );

        //_inst.text =
        //    "{scale 2}{voice 0}{speed 2}{space_y 2}{shadow true}{gui true}{depth "
        //    + string(DEPTH_UI.TEXT)
        //    + "}\n"
        //    + _txt;
		
		//_inst.text = "HELLO WORLD";

		
		
    }
	else {
		//show_debug_message("NO DIALOG BUT NOT DESTROYING");
	}
}