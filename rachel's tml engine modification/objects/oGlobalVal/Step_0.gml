globalvar Board,Soul;

Board = {
	Size : {
		SetSize : function BoardSetSize(up,down,right,left,tween = ANIM_TWEEN.QUAD,ease = ANIM_EASE.OUT,time=25) {
			Anim_Create(battle_board,"up",tween,ease,battle_board.up,up - battle_board.up,time);
			Anim_Create(battle_board,"down",tween,ease,battle_board.down,down - battle_board.down,time);
			Anim_Create(battle_board,"right",tween,ease,battle_board.right,right - battle_board.right,time);
			Anim_Create(battle_board,"left",tween,ease,battle_board.left,left - battle_board.left,time);
		},
	
		/*GetTrans : function GetTras() {
			return (Anim_IsExists(battle_board,"up") || Anim_IsExists(battle_board,"down") || Anim_IsExists(battle_board,"left") || Anim_IsExists(battle_board,"right") || Anim_IsExists(battle_board,"x") || Anim_IsExists(battle_board,"y"));
		}*/
		SetOnlyOneSize : function SetOnlyOne(dir,val,time,tween = ANIM_TWEEN.QUAD,ease = ANIM_EASE.OUT) {
			switch dir {
				case "right" :
					Anim_Create(battle_board,"right",tween,ease,battle_board.right,val - battle_board.right,time);
					break;
				
				case "left" :
					Anim_Create(battle_board,"left",tween,ease,battle_board.left,val - battle_board.left,time);
					break;
				
				case "up" :
					Anim_Create(battle_board,"up",tween,ease,battle_board.up,val - battle_board.up,time);
					break;
				
				case "down" :
					Anim_Create(battle_board,"down",tween,ease,battle_board.down,val - battle_board.down,time);
					break;
			}
		},
		SetResetSize : function BoardReset() {
			battle_board.up = BATTLE_BOARD.UP;
			battle_board.down = BATTLE_BOARD.DOWN;
			battle_board.right = BATTLE_BOARD.RIGHT;
			battle_board.left = BATTLE_BOARD.LEFT;
		},
		SetResetSizeAnim : function BoardResetAnim(time) {
			var up = BATTLE_BOARD.UP;
			var down = BATTLE_BOARD.DOWN;
			var right = BATTLE_BOARD.RIGHT;
			var left = BATTLE_BOARD.LEFT;
			Anim_Create(battle_board,"up",tween,ease,battle_board.up,up - battle_board.up,time);
			Anim_Create(battle_board,"down",tween,ease,battle_board.down,down - battle_board.down,time);
			Anim_Create(battle_board,"right",tween,ease,battle_board.right,right - battle_board.right,time);
			Anim_Create(battle_board,"left",tween,ease,battle_board.left,left - battle_board.left,time);
		}
		
	},
	Position : {
		SetPosition : function SPosition(x_,y_) {
			battle_board.x = x_;
			battle_board.y = y_;
		},
		
		SetPositionAnim : function PositionAnimBothXY(x_,y_,tween = ANIM_TWEEN.QUAD,ease = ANIM_EASE.OUT,time = 25) {
			Anim_Create(battle_board,"x",tween,ease,battle_board.x,x_-battle_board.x,time);
			Anim_Create(battle_board,"y",tween,ease,battle_board.y,y_-battle_board.y,time);
		},
		
		SetPositionX : function SetPositionOnlyX(_x) {
			battle_board.x = _x;
		},
		
		SetPositionXAnim : function PositionAnimOnlyX(_x,tween = ANIM_TWEEN.QUAD,ease = ANIM_EASE.OUT,time = 25) {
			Anim_Create(battle_board,"x",tween,ease,battle_board.x,x_-battle_board.x,time);
		},
		
		SetPositionY : function PositionOnlyY(_y) {
			battle_board.y = _y;
		},
		
		SetPositionYAnim : function PositionAnimOnlyY(_y,tween = ANIM_TWEEN.QUAD,ease = ANIM_EASE.OUT,time = 25) {
			Anim_Create(battle_board,"y",tween,ease,battle_board.y,y_-battle_board.y,time);
		}
	},
	color : {
		SetFrameColor : function SetBoardFrameColor(r,g,b) {
			battle_board.r = r;
			battle_board.g = g;
			battle_board.b = b;
		},
		SetFrameColorAnim : function SetBoardFrameColorAnim(time) {
			Anim_Create(battle_board,"r",0,0,battle_board.r,r-battle_board.r,time);
			Anim_Create(battle_board,"g",0,0,battle_board.g,g-battle_board.g,time);
			Anim_Create(battle_board,"b",0,0,battle_board.b,b-battle_board.b,time);
		},
		SetBgColor : function GBCOLOR(color) {
			battle_board.color_bg = color;
		}
	}
}
Soul = {
	Move : {
		SetMoveable : function SoulMoveAble(BOOL) {
			battle_soul.moveable = BOOL;
		}
	},
	Mode : {
		SetSoul : function SetSoulMode(mode) { // add soul
			switch mode {
				case "red" :
				Battle_SetSoul(battle_soul_red);
				break;
			}
		}
	},
	Position : {
		SetSoulPosition : function SoulPosition(_x,_y) {
			battle_soul.x = _x;
			battle_soul.y = _y;
		},
		SoulSetCenter : function SoulPositionCenter() {
			battle_soul.x = battle_board.x;
			battle_soul.y = battle_board.y;
		}
	}
}