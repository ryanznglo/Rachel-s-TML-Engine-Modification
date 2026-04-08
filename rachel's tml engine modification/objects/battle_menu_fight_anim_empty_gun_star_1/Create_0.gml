depth=DEPTH_BATTLE.UI;
image_speed=2;
origin_x = x; 
origin_y = y;
angle = 0; 
radius = 0;
phase = 0;
angle_speed = 10; 
max_radius = 50; 
if instance_exists(battle_menu_fight_anim_empty_gun_star)
if battle_menu_fight_anim_empty_gun_star.image_blend = c_yellow{
	image_blend = c_yellow
}
Anim_Create(self,"image_xscale",0,0,1,0.5,15,0)
Anim_Create(self,"image_yscale",0,0,1,0.5,15,0)
Anim_Create(self,"image_xscale",0,0,1.5,-1.5,25,15)
Anim_Create(self,"image_yscale",0,0,1.5,-1.5,25,15)