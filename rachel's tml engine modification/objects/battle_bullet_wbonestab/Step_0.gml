///@desc Process


// warning
if (_timer == 0 && _timer <= wait)
{
    audio_play_sound(snd_bonewarn, 50, false);
}
else

// rise
if (_timer == wait)
{
    if (wait >= 0) audio_play_sound(snd_stab, 50, false);
    Anim_Create(id, "u_pos", ANIM_TWEEN.LINEAR, 0, -10, height + 10, 10);
}
else

// fall
if (stay >= 0 && _timer == (wait + 10 + stay))
{
    Anim_Create(id, "u_pos", ANIM_TWEEN.LINEAR, 0, height, -(height + 10), 10);
}
else

// destroy
if (stay >= 0 && _timer >= (wait + 10 + stay + 10))
{
    instance_destroy();
}

_timer++;