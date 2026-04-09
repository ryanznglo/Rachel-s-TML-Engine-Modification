// Inherit the parent event
event_inherited();

if countdown > 0 {
	if homing {target_dir = point_direction(x,y,battle_soul.x,battle_soul.y);}
	if angle_override {
		direction = angle_override_value;
	} else {
		direction = target_dir
	}
	countdown -= 1;
} else {
	if not moving {
		audio_play_sound(snd_arrow,0,false);
		moving = true;
	}
	motion_add(direction,movespeed);
}

if a < 1 {
	a += 0.05;
}

image_angle += angle_difference(direction,image_angle) * 0.1;

show_debug_message(direction)