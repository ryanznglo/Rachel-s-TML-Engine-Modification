event_inherited();

_dir=choose(DIR.LEFT,DIR.RIGHT);
_aim_x=0;
_aim_image=0;
var spd = 90;
amount = 4; //Max Punch
_pressed = 0;            
_input_acceptable = true;
_hit_locked = false;
_timer = 60; 
_dir = DIR.RIGHT;       
_indicator = noone;      
can_punch = 0
if(_dir==DIR.LEFT){
	_aim_x=x+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)/2;
	Anim_Create(id,"_aim_x",0,0,_aim_x,-(battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)),spd);
}else{
	_aim_x=x-battle_board.left-sprite_get_width(spr_battle_menu_fight_aim)/2;
	Anim_Create(id,"_aim_x",0,0,_aim_x,battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim),spd);
}
