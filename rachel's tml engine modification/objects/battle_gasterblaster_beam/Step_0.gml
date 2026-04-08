timer++
if(place_meeting(x,y,battle_soul)){
	if image_alpha > 0.2{
		if timer%3=0{
			Player_Hurt(1)
			audio_play_sound(snd_hurt,0,false)
		}
	}
}