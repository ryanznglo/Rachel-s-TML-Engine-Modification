if(!surface_exists(_surface)){
	_surface=surface_create(640,480);
}

surface_set_target(_surface);{
	draw_clear_alpha(0,0);
}surface_reset_target();

if(!surface_exists(_surface_full)){
	_surface_full=surface_create(640,480);
}

surface_set_target(_surface_full);{
	draw_clear_alpha(0,0);
}surface_reset_target();

if(!surface_exists(_surface_mask)){
	_surface_mask=surface_create(640,480);
}

surface_set_target(_surface_mask);{
	draw_clear_alpha(0,0);
}surface_reset_target();