function HandleCommand(_cmd)
{
    var parts = string_split(_cmd, "=");

    var tag = parts[0];
    var value = "";

    if (array_length(parts) > 1)
        value = parts[1];

    value = string_replace_all(value, "]", "");

    value = string_trim(value);

    switch (tag)
    {
        case "speed":
            text_speed = real(value);
			break;

        case "wait":
            timer -= real(value);
			break;

        case "color":
            image_blend = real(value); // or hex parsing later
			break;

        case "instant":
            instant = (value == "true");
            if (instant) index = len;
			break;

        case "font":
            font = _group_font[real(value), 0];
			break;
    }
}