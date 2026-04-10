function HandleCommand(_cmd, _color_ref)
{
    var parts = string_split(_cmd, "=");
    var tag = parts[0];
    var value = (array_length(parts) > 1) ? parts[1] : "";

    value = string_replace_all(value, "]", "");

    switch (tag)
    {
        case "color":
            return HexToColor(value); // TEMP change only
    }

    return _color_ref;
}