function ParseCommands()
{
    var i = 1;

    while (i <= len)
    {
        var c = string_char_at(full_text, i);

        if (c == "[")
        {
            var endd = i;

            while (endd <= len && string_char_at(full_text, endd) != "]")
            {
                endd++;
            }

            if (endd <= len)
            {
                var cmd = string_copy(full_text, i + 1, endd - i - 1);

                HandleCommand(cmd);

                full_text =
                    string_delete(full_text, i, endd - i + 1);

                len = string_length(full_text);

                continue; 
            }
        }

        i++;
    }
}