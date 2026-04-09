// Inherit the parent event
event_inherited();

image_angle = point_direction(x,y,battle_soul.x,battle_soul.y);

movespeed = 0.1;

angle_override = false;
angle_override_value = 0;

moving = false;

depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;

velocityx = 0;
velocityy = 0;
maxvelocity = 4;

active_countdown = 120;

a = 0;

audio_play_sound(snd_spearappear,0,false);