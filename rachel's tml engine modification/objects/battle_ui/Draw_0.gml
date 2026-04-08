draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x,y,Player_GetName()+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),1);
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,21,0,make_color_rgb(255,255,0),1);

if global.karma {
	draw_sprite_ext(spr_pixel,0,x+245+Player_GetHp()*1.25,y-1,Player_GetKr()*1.25,21,0,make_color_rgb(255,40,255),1);
	draw_sprite_ext(spr_battle_ui_kr,0,x+245+Player_GetHpMax()*1.25+8,y+3,1,1,0,c_white,1);
	
	var colorkr=(Player_GetKr()<=0 ? c_white : make_color_rgb(255,40,255));
	draw_set_color(colorkr);

	draw_text(x+245+Player_GetHpMax()*1.25+14+32,y,string(Player_GetHp()+Player_GetKr())+" / "+string(Player_GetHpMax()));
}
else
{
	draw_text(x+245+Player_GetHpMax()*1.25+14,y,string(Player_GetHp())+" / "+string(Player_GetHpMax()));
}
