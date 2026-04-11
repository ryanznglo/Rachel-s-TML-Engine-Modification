// initial stuff

_group_font = []
_group_voice = []

LoadFontGroup(0, "dialog");
LoadFontGroup(1, "menu");
LoadFontGroup(2, "battle");

_group_voice[0, 0] = snd_text_voice_default;
_group_voice[1, 0] = snd_text_voice_typer;

// variables

full_text = "";
visible_text = "";

len = 0;

index = 0;
text_speed = 0.5;
timer = 0;
finished = false;

alpha = 1
instant = false;

font = _group_font[0, 0]
voice = _group_voice[1, 0]

image_blend = c_white

scale_x = 2
scale_y = 2