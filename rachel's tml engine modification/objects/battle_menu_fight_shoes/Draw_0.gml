surface_set_target(Battle_GetBoardSurface());{
	draw_self();
}surface_reset_target();
if(image_alpha==1){
	draw_sprite_ext(spr_fight_aim[0],0,_aim_x,y,_aim_scale,_aim_scale,0,_aim_color,_aim_alpha);
	
	
if _currenthit = 1{
	draw_sprite_ext(spr_fight_aim[1],0,_aim_x2,y,_aim_scale2,_aim_scale2,0,_aim_color2,_aim_alpha2);
}else{
	draw_sprite_ext(spr_fight_aim[1],1,_aim_x2,y,_aim_scale2,_aim_scale2,0,_aim_color2,_aim_alpha2);
}
if _currenthit = 2{
	draw_sprite_ext(spr_fight_aim[2],0,_aim_x3,y,_aim_scale3,_aim_scale3,0,_aim_color3,_aim_alpha3);
}else{
	draw_sprite_ext(spr_fight_aim[2],1,_aim_x3,y,_aim_scale3,_aim_scale3,0,_aim_color3,_aim_alpha3);

}


}