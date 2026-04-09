//Step event

if start
{
	timer++
	if timer == 10
	{
		//CreateBone(Board_X(DIR.LEFT), Board_Y(DIR.DOWN), 100, 1, 0, 0)
		BoneStab(DIR.DOWN, 50, 100)
		//Battle_CreateBoardCutout(100, 20, 100, 100, battle_board.x + 100, battle_board.y)
	}
	if timer == 100
	{
		Board.Size.SetSize(65, 65, 100, 283, ANIM_TWEEN.LINEAR)
		Battle_Slam(DIR.DOWN)
		//When timer is 100, It will do something.
	}
	if timer == 1000
	{
		Battle_EndTurn()
		//When timer is 100, It will do something.
	}
	if Battle_Repeat(150, 400, 30) 
	{
		//When timer is between 150 and 450, and the timer variable is 30's multiple, it will do something.
	}
}

