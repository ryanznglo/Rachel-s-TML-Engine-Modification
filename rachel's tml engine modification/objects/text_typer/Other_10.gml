/// FONT / VOICE SETUP

_group_font  = [];
_group_voice = [];

LoadFontGroup(0, "dialog");
LoadFontGroup(1, "menu");
LoadFontGroup(2, "battle");

// VOICES
_group_voice[0, 0] = snd_text_voice_default;
_group_voice[1, 0] = snd_text_voice_typer;

/// TEXT STATE

full_text    = "";
visible_text = "";

len    = 0;
index  = 0;

finished = false;
instant  = false;

// TEXT SPEED

text_speed = 0.5;
timer      = 0;

/// STYLE

font     = _group_font[0, 0];
voice    = _group_voice[1, 0];

scale_x = 2;
scale_y = 2;

alpha = 1;

/// COLOR SYSTEM (STACK BASED)
draw_color  = c_white;
color_stack = [c_white];