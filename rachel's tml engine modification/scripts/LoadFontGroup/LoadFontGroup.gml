function LoadFontGroup(_group, _name)
{
    for (var i = 0; i < 2; i++)
    {
        var base = "font." + _name + "." + string(i);

        _group_font[_group, i] = Lang_GetFont(Lang_GetString(base));
        _group_font_scale_x[_group, i] = real(Lang_GetString(base + ".scale.x"));
        _group_font_scale_y[_group, i] = real(Lang_GetString(base + ".scale.y"));
        _group_font_space_x[_group, i] = real(Lang_GetString(base + ".space.x"));
    }

    _group_font_space_y[_group] = real(Lang_GetString("font." + _name + ".space.y"));
}