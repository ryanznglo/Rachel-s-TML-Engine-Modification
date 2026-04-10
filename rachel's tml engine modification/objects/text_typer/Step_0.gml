timer += text_speed;

if (timer >= 1)
{
    timer = 0;

    if (string_char_at(full_text, index + 1) == "[")
    {
        var new_index = TryHandleCommand(full_text, index + 1, len, HandleCommand);

        if (new_index != -1)
        {
            index = new_index;
        }
        else
        {
            index++;
        }
    }
    else
    {
        index++;
    }
	
	var ch = string_char_at(full_text, index);

    if (ch != " " && ch != "" && ch != "[" )
    {
		audio_play_sound(voice, 0, false);
    }


    if (index >= len)
    {
        index = len;
        finished = true;
    }
}

visible_text = "";

for (var i = 1; i <= index; i++)
{
    var ch = string_char_at(full_text, i);

    if (ch == "[")
    {
        while (i <= index && string_char_at(full_text, i) != "]")
        {
            i++;
        }
        continue;
    }

    visible_text += ch;
}


// extra shit

if instant {
	index = len
}

// input
if Input_IsPressed(INPUT.CANCEL)
{
    index = len;
    finished = true;
}

if (finished && Input_IsPressed(INPUT.CONFIRM))
{
    instance_destroy();
}