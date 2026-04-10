function GetText()
{
    var raw = string_copy(self.full_text, 1, self.index);
    return wrap_text(raw, 300);
}