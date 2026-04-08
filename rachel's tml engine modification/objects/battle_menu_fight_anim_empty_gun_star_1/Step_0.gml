image_angle+=10
switch (phase) {
    case 0: 
        radius += 8;
        if (radius >= max_radius) {
            radius = max_radius;
            phase = 1;
        }
        break;
    case 1: 
        angle += angle_speed;
        if (angle >= 360) angle -= 360;

        if (radius == max_radius) {
            if (alarm[0] == -1) alarm[0] = 25
        }
        break;

    case 2: 
        radius -= 6;
        if (radius <= 0) {
            instance_destroy();
        }
        break;
}


x = origin_x + lengthdir_x(radius, angle);
y = origin_y + lengthdir_y(radius, angle);
