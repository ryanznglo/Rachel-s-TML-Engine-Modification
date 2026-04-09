// Inherit the parent event
event_inherited();
if active_countdown > 0 {
	active_countdown -= 1;
	target_dir = point_direction(x,y,battle_soul.x,battle_soul.y);
	direction = target_dir;
	//image_angle += angle_difference(direction,image_angle) * 0.1;
//} else {
	//image_angle += 1;
}
image_angle += angle_difference(direction,image_angle) * 0.15;
if angle_override {
	target_dir = angle_override_value;
}

velocityx += dcos(image_angle)*movespeed;
velocityy += -dsin(image_angle)*movespeed;

velocityx = clamp(velocityx,-maxvelocity,maxvelocity)
velocityy = clamp(velocityy,-maxvelocity,maxvelocity)

x += velocityx;
y += velocityy;

if a < 1 {
	a += 0.05;
}