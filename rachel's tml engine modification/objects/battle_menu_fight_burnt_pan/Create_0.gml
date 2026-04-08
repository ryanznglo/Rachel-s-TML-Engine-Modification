event_inherited();

depth = DEPTH_BATTLE.BOARD - 1;

_thing = instance_create_depth(x, y, 0, battle_menu_fight);

spd = 85;

_dir = choose(DIR.LEFT, DIR.RIGHT);
_input_acceptable = true;


_aim_x = 0;
_aim_x2 = 0;
_aim_x3 = 0;
_aim_x4 = 0;

_colors = [c_white, c_yellow, c_aqua, c_red];
_ac = 0; _ac2 = 0; _ac3 = 0; _ac4 = 0;
spr_fight_aim =[
spr_battle_menu_fight_aim,
spr_battle_menu_fight_aim,
spr_battle_menu_fight_aim,
spr_battle_menu_fight_aim,
]
_aim_color = _colors[_ac];
_aim_color2 = _colors[_ac2];
_aim_color3 = _colors[_ac3];
_aim_color4 = _colors[_ac4];

_aim_alpha = 0;
_aim_alpha2 = 0;
_aim_alpha3 = 0;
_aim_alpha4 = 0;

_aim_scale = 1;
_aim_scale2 = 1;
_aim_scale3 = 1;
_aim_scale4 = 1;

_currenthit = 0;
_perfect = 0;
_perfect2 = 0;
_perfect3 = 0;
_perfect4 = 0;

_missed = 0;
_missed1 = 0;
_missed2 = 0;
_missed3 = 0;
_hit_locked = 0;

_delay = irandom_range(7, 14);
_delay1 = _delay + irandom_range(4, 11);
_delay2 = _delay1*1.4 + irandom_range(6, 14);
_delay3 = _delay2 + irandom_range(6, 15);

if (_dir == DIR.LEFT) {
    _aim_x  = x + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim)/2;
    _aim_x2 = _aim_x;
    _aim_x3 = _aim_x;
    _aim_x4 = _aim_x;
    
    Anim_Create(id, "_aim_x",  0, 0, _aim_x, -(battle_board.left + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim)), spd);
    Anim_Create(id, "_aim_x2", 0, 0, _aim_x, -(battle_board.left + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim)), spd, _delay1);
    Anim_Create(id, "_aim_x3", 0, 0, _aim_x, -(battle_board.left + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim)), spd, _delay2);
    Anim_Create(id, "_aim_x4", 0, 0, _aim_x, -(battle_board.left + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim)), spd, _delay3);
} else {
    _aim_x  = x - battle_board.left - sprite_get_width(spr_battle_menu_fight_aim)/2;
    _aim_x2 = _aim_x;
    _aim_x3 = _aim_x;
    _aim_x4 = _aim_x;
    
    Anim_Create(id, "_aim_x",  0, 0, _aim_x, battle_board.left + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim), spd);
    Anim_Create(id, "_aim_x2", 0, 0, _aim_x, battle_board.left + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim), spd, _delay1);
    Anim_Create(id, "_aim_x3", 0, 0, _aim_x, battle_board.left + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim), spd, _delay2);
    Anim_Create(id, "_aim_x4", 0, 0, _aim_x, battle_board.left + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim), spd, _delay3);
}


Anim_Create(id, "_aim_alpha",  0, 0, 0, 1, 1);
Anim_Create(id, "_aim_alpha2", 0, 0, 0, 1, 1, _delay1);
Anim_Create(id, "_aim_alpha3", 0, 0, 0, 1, 1, _delay2);
Anim_Create(id, "_aim_alpha4", 0, 0, 0, 1, 1, _delay3);

