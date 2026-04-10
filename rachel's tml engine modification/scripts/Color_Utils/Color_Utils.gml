function GetColor()
{
    return color_stack[array_length(color_stack) - 1];
}

function PushColor(_c)
{
    array_push(color_stack, _c);
}

function PopColor()
{
    if (array_length(color_stack) > 1)
        array_pop(color_stack);
}

function HexToColor(_hex)
{
    _hex = string_replace_all(_hex, "#", "");

    var r = real("0x" + string_copy(_hex, 1, 2));
    var g = real("0x" + string_copy(_hex, 3, 2));
    var b = real("0x" + string_copy(_hex, 5, 2));

    return make_color_rgb(r, g, b);
}