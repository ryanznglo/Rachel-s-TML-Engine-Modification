depth=DEPTH_BATTLE.UI;
image_speed=1;
if instance_exists(battle_menu_fight_anim_burnt_pan)
if battle_menu_fight_anim_burnt_pan.image_blend = c_yellow{
	image_blend = c_yellow
}
Anim_Create(id,"image_angle",0,0,0,60,40,10)
Anim_Create(id,"image_alpha",0,0,1,-1,20,30)