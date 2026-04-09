//Step event

if start
{
	timer++
	switch turn {
		case 0:
			if timer <= 420 {
				if (timer+30)%60 == 0
				{
					instance_create_depth(battle_soul.x,Board_Y(DIR.UP)-80,0,knife_bullet);
				}
				if timer % 60 == 0
				{
					instance_create_depth(Board_X(DIR.LEFT)-80,battle_soul.y,0,knife_bullet);
				}
			}
			if timer == 540 {
				Battle_EndTurn()
			}
			break;
		case 1:
			if timer <= 300 {
				if (timer) % 240 == 0
				{
					instance_create_depth(Board_X(DIR.LEFT)-80,random_range(Board_Y(DIR.UP),Board_Y(DIR.DOWN)),0,knife_bullet_follower);
				}
				if (timer+60) % 240 == 0
				{
					instance_create_depth(random_range(Board_X(DIR.LEFT),Board_X(DIR.RIGHT)),Board_Y(DIR.UP)-80,0,knife_bullet_follower);
				}
				if (timer+120) % 240 == 0
				{
					instance_create_depth(Board_X(DIR.RIGHT)+80,random_range(Board_Y(DIR.UP),Board_Y(DIR.DOWN)),0,knife_bullet_follower);
				}
				if (timer+180) % 240 == 0
				{
					instance_create_depth(random_range(Board_X(DIR.LEFT),Board_X(DIR.RIGHT)),Board_Y(DIR.DOWN)+80,0,knife_bullet_follower);
				}
			}
			if timer == 540 {
				instance_create_depth(Board_X(DIR.LEFT)-80,(Battle_GetBoardPositionY()-60),0,knife_bullet);
				instance_create_depth(Board_X(DIR.RIGHT)+80,(Battle_GetBoardPositionY()-60),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.LEFT)-80,(Battle_GetBoardPositionY()-40),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.RIGHT)+80,(Battle_GetBoardPositionY()-40),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.LEFT)-80,(Battle_GetBoardPositionY()-20),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.RIGHT)+80,(Battle_GetBoardPositionY()-20),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.LEFT)-80,(Battle_GetBoardPositionY()-0),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.RIGHT)+80,(Battle_GetBoardPositionY()-0),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.LEFT)-80,(Battle_GetBoardPositionY()+20),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.RIGHT)+80,(Battle_GetBoardPositionY()+20),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.LEFT)-80,(Battle_GetBoardPositionY()+40),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.RIGHT)+80,(Battle_GetBoardPositionY()+40),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.LEFT)-80,(Battle_GetBoardPositionY()+60),0,knife_bullet_silent);
				instance_create_depth(Board_X(DIR.RIGHT)+80,(Battle_GetBoardPositionY()+60),0,knife_bullet_silent);
			}
			if timer == 660 {
				Battle_EndTurn()
			}
			break;
		case 2:
			if timer % 60 == 0 and timer <= 480 {
				knife1 = instance_create_depth(battle_soul.x-80,battle_soul.y-80,0,knife_bullet);
				knife1.homing = false
				//knife1.angle_override = true
				//knife1.angle_override_value = 135
				knife2 = instance_create_depth(battle_soul.x+80,battle_soul.y-80,0,knife_bullet_silent);
				knife2.homing = false
				//knife2.angle_override = true
				//knife2.angle_override_value = -135
				knife3 = instance_create_depth(battle_soul.x+80,battle_soul.y+80,0,knife_bullet_silent);
				knife3.homing = false
				//knife3.angle_override = true
				//knife3.angle_override_value = -45
				knife4 = instance_create_depth(battle_soul.x-80,battle_soul.y+80,0,knife_bullet_silent);
				knife4.homing = false
				//knife4.angle_override = true
				//knife4.angle_override_value = 45
			}
			if timer > 240 and timer % 60 == 0 and timer <= 480 {
				instance_create_depth(Board_X(DIR.LEFT)-80,Battle_GetBoardPositionY(),0,knife_bullet)
			}
			if timer == 540 {
				Board.Size.SetSize(20,20,20,20)
				instance_create_depth(Board_X(DIR.LEFT)-80,Battle_GetBoardPositionY(),0,knife_bullet)
				instance_create_depth(Board_X(DIR.RIGHT)+80,Battle_GetBoardPositionY(),0,knife_bullet_silent)
				instance_create_depth(Battle_GetBoardPositionX(),Board_Y(DIR.DOWN)+80,0,knife_bullet_silent)
				instance_create_depth(Battle_GetBoardPositionX(),Board_Y(DIR.UP)-80,0,knife_bullet_silent)
			}	
			if timer == 720 {
				Battle_EndTurn()
			}
			break;
		default:
			Battle_EndTurn()
			break;
	}
}
