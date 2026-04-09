//Step event

if start
{
	timer++
	if timer == 10
	{
		CreateBone(Board_X(DIR.LEFT), Board_Y(DIR.DOWN), 100, 1, 0, 0)
		BoneStab(DIR.DOWN, 50)
	}
	if timer == 100
	{
		Battle_Slam(DIR.DOWN)
		//When timer is 100, It will do something.
	}
	if timer == 1000
	{
		Battle_EndTurn()
		//When timer is 100, It will do something.
	}
	if timer >= 150 && timer <= 400 && timer%30==0
	{
		//When timer is between 150 and 450, and the timer variable is 30's multiple, it will do something.
	}
}
