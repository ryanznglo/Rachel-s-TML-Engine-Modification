function TryHandleCommand(_text, _index, _len, _callback)
{
    if (string_char_at(_text, _index) != "[")
        return -1;

    var start = _index;
    var endd = -1;

    for (var i = _index; i <= _len; i++)
    {
        if (string_char_at(_text, i) == "]")
        {
            endd = i;
            break;
        }
    }

    if (endd == -1)
        return -1;

    var cmd = string_copy(_text, start + 1, endd - start - 1);
    _callback(cmd);

    return endd + 1;
}