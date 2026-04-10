function TextTyper(_text, _speed, _x, _y, _color = c_white, _alpha = 1, _instant = false)
{
    var inst = instance_create_depth(_x, _y, 0, text_typer);

    inst.full_text = _text;
    inst.len = string_length(_text);

    inst.index = 0;
    inst.text_speed = _speed;
    inst.timer = 0;
    inst.finished = false;
	inst.image_blend = _color
	inst.alpha = _alpha
	inst.instant = _instant

    return inst;
}