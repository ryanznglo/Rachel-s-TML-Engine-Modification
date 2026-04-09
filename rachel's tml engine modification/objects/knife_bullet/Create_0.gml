// Inherit the parent event
event_inherited();

target_dir = point_direction(x,y,battle_soul.x,battle_soul.y);

countdown = 30
accel_speed = 0.1
movespeed = 1
a = 0

homing = true

angle_override = false
angle_override_value = 0
image_angle = point_direction(x,y,battle_soul.x,battle_soul.y)-180;

moving = false

depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH

audio_play_sound(snd_spearappear,0,false)