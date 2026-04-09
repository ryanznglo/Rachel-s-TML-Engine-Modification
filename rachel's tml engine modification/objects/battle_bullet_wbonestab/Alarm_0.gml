var count = width div 20;
var use_sep = (dir mod 180) != 0;
var depthh = (height + 10) * (dir - 90) / 90;

var base_angle_min = dir + 180 - _angled;
var base_angle_max = dir + 180 + _angled;

bone_data = []; 

for (var i = 0; i < count; i++)
{
    var sep = 5 + i * 10;
    var rand_ang = 90 - random_range(base_angle_min, base_angle_max);

    array_push(bone_data, {
        side: 1,
        sep: sep,
        ang: rand_ang
    });

    array_push(bone_data, {
        side: -1,
        sep: sep,
        ang: rand_ang
    });
}