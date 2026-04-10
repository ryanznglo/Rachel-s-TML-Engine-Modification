function WrapText(_text, _width)
{
    var words = string_split(_text, " ");
    var line = "";
    var result = "";

    for (var i = 0; i < array_length(words); i++)
    {
        var test = line + words[i] + " ";

        if (string_width(test) > _width)
        {
            result += line + "\n";
            line = words[i] + " ";
        }
        else
        {
            line = test;
        }
    }

    result += line;
    return result;
}

