event_inherited();

dir = DIR.DOWN;
wait = 40;
stay = 20;

height = 40;
width = 130;

u_pos = -10;
_timer = 0;

offset = 0;
_angled = 5;

// bone data (no instances anymore)
bone_data = [];

_dirs = [];
_dirs[@ DIR.RIGHT] = "right";
_dirs[@ DIR.UP]    = "up";
_dirs[@ DIR.LEFT]  = "left";
_dirs[@ DIR.DOWN]  = "down";

alarm[0] = 1;

spr_bone = spr_bullet_bone

top = false

damage = 1