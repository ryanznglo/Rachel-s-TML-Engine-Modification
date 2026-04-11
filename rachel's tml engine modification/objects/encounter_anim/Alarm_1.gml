_draw_black=true;
_draw_player=true;

var cam = view_camera[0];

var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var sx = gui_w / cam_w;
var sy = gui_h / cam_h;

_draw_soul_x = (char_player.x - camera_get_view_x(cam)) * sx;
_draw_soul_y = ((char_player.y - char_player.sprite_height + 17) - camera_get_view_y(cam)) * sy;

if(Encounter_IsPauseBGM(_encounter)){
	BGM_Pause(0);
}
alarm[2]=1;