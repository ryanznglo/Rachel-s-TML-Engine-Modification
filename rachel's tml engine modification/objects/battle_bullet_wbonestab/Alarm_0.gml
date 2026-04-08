var count = width div 20;
var use_sep = (dir mod 180) != 0;
var depthh = (height + 10) * (dir - 90) / 90;
var base_angle_min = dir + 180 - _angled;
var base_angle_max = dir + 180 + _angled;

var j = 0;

for (var i = 0; i < count; i++)
{
    var sep = 5 + i * 10;
    var rand_ang = 90 - random_range(base_angle_min, base_angle_max);

    var x_off = use_sep ? sep : -depthh;
    var y_off = use_sep ? depthh : sep;

    bones[j] = CreateBone(x + x_off, y + y_off, height + 100, 0, 0, rand_ang, false, 0, image_blend, 90);

    bones[j + 1] = CreateBone(x - x_off, y - y_off, height + 100, 0, 0, rand_ang, false, 0, image_blend, 90);

    j += 2;
}