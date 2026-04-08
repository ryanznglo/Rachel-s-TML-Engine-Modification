
if howmanytime = 3{
	var circle_ = instance_create_depth(x,y,depth,battle_menu_fight_anim_empty_gun_circle)
		Anim_Create(circle_,"image_xscale",0,0,0,3,10)
		Anim_Create(circle_,"image_yscale",0,0,0,3,10)
		Anim_Create(circle_,"image_xscale",0,0,3,-1.5,10,10)
		Anim_Create(circle_,"image_yscale",0,0,3,-1.5,10,10)
		Anim_Create(circle_,"image_alpha",0,0,1,-1,20,5)


for (var i = 0; i < array_length(directions); i++) {
	var ang = i * 45;
    var inst = instance_create_depth(x, y, depth, battle_menu_fight_anim_empty_gun_star_1);
		inst.direction = directions[i];
		inst.angle = ang;
		Anim_Create(inst,"speed",0,0,1,1.5,25)
		Anim_Create(inst,"speed",0,0,2.5,-2.0,20,25)

}	
}
if howmanytime = 6{
var circle_ = instance_create_depth(x,y,depth,battle_menu_fight_anim_empty_gun_circle)
	Anim_Create(circle_,"image_xscale",0,0,0,3,10)
	Anim_Create(circle_,"image_yscale",0,0,0,3,10)
	Anim_Create(circle_,"image_xscale",0,0,3,-1.5,10,10)
	Anim_Create(circle_,"image_yscale",0,0,3,-1.5,10,10)
	Anim_Create(circle_,"image_alpha",0,0,1,-1,20,5)	
}
howmanytime++
