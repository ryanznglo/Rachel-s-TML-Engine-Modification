draw_set_font(font);
draw_set_alpha(alpha);

var xx = x;
var yy = y;
var current_color = c_white;

for (var i = 1; i <= index; i++)
{
    var ch = string_char_at(full_text, i);

    if (ch == "[")
    {
        var endd = i;

        for (var j = i; j <= string_length(full_text); j++)
        {
            if (string_char_at(full_text, j) == "]")
            {
                endd = j;
                break;
            }
        }

        var cmd = string_copy(full_text, i + 1, endd - i - 1);

        current_color = HandleCommand(cmd, current_color);

        i = endd;
        continue;
    }

    draw_set_color(current_color);
    draw_text_transformed(xx, yy, ch, scale_x, scale_y, 0);

    xx += string_width(ch) * scale_x
}