depth=DEPTH_BATTLE.BOARD + 1;

up=BATTLE_BOARD.UP;
down=BATTLE_BOARD.DOWN;
left=BATTLE_BOARD.LEFT;
right=BATTLE_BOARD.RIGHT;

angle=0;
enable_frame=true;

_inst_frame_up=instance_create_depth(0,0,0,block);
_inst_frame_up.sprite_index=spr_pixel;
_inst_frame_up.pushSoulEnabled=true;
_inst_frame_up.pushSoulDirection=DIR.UP;

_inst_frame_left=instance_create_depth(0,0,0,block);
_inst_frame_left.sprite_index=spr_pixel;
_inst_frame_left.pushSoulEnabled=true;
_inst_frame_left.pushSoulDirection=DIR.LEFT;

_inst_frame_down=instance_create_depth(0,0,0,block);
_inst_frame_down.sprite_index=spr_pixel;
_inst_frame_down.pushSoulEnabled=true;
_inst_frame_down.pushSoulDirection=DIR.DOWN;

_inst_frame_right=instance_create_depth(0,0,0,block);
_inst_frame_right.sprite_index=spr_pixel;
_inst_frame_right.pushSoulEnabled=true;
_inst_frame_right.pushSoulDirection=DIR.RIGHT;

_point_x=0;
_point_y=0;

_angle=0;
_bg_x=0;
_bg_y=0;
_bg_width=0;
_bg_height=0;
_frame_up_x=0;
_frame_up_y=0;
_frame_up_width=0;
_frame_up_height=0;
_frame_left_x=0;
_frame_left_y=0;
_frame_left_width=0;
_frame_left_height=0;
_frame_down_x=0;
_frame_down_y=0;
_frame_down_width=0;
_frame_down_height=0;
_frame_right_x=0;
_frame_right_y=0;
_frame_right_width=0;
_frame_right_height=0;

tag = 0;