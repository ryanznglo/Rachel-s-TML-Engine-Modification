/// @description Draw

depth = top ? DEPTH_BATTLE.BULLET_OUTSIDE_HIGH : DEPTH_BATTLE.BULLET;

surface_set_target(Battle_GetBoardSurface());

var len = height
var edge = variable_instance_get(battle_board, _dirs[@ dir]);

var soul = battle_soul;

for (var i = 0; i < array_length(bone_data); i++)
{
    var b = bone_data[i];

    var side = b.side;
    var sep  = b.sep;
    var ang  = b.ang;

    var _sep = side * offset + 5 + (sep div 10) * 10;
    var base_dir = (dir + 90 + (side == -1) * 180) mod 360;

    var base_x = battle_board.x;
    var base_y = battle_board.y;

    switch (dir)
    {
        case DIR.DOWN:  base_y += edge; break;
        case DIR.UP:    base_y -= edge; break;
        case DIR.RIGHT: base_x += edge; break;
        case DIR.LEFT:  base_x -= edge; break;
    }

    var bx = base_x
        + lengthdir_x(_sep, base_dir)
        + lengthdir_x(-u_pos - 10, dir);

    var by = base_y
        + lengthdir_y(_sep, base_dir)
        + lengthdir_y(-u_pos - 10, dir);

    // draw bone
    draw_sprite_ext(
	    spr_bone,
	    0,
	    bx, by,
	    1, // ← restore this
	    len / sprite_get_height(spr_bone),
	    ang,
	    image_blend,
	    1
	);

    // collision + debug
    if (instance_exists(soul))
    {
        var px = soul.x;
        var py = soul.y;


		// direction
		var dx = lengthdir_x(1, ang);
		var dy = lengthdir_y(1, ang);
		
		var thickness = sprite_get_width(spr_bone) / 4

		// step along the bone
		var step = max(2, thickness);

		var hit = false;

		for (var d = 0; d <= width / 16; d += step)
		{
		    var cx = bx + dx * d;
		    var cy = by + dy * d;

		    if (point_distance(px, py, cx, cy) <= thickness)
		    {
		        hit = true;
		        break;
		    }
		}

		if (hit)
		{
		    if (global.karma)
		    {
		        Player_HurtKr();
		        audio_play_sound(snd_hurt, 0, false);
		        Camera_Shake(2, 2, 4, 4);
		    }
		    else
		    {
		        Battle_CallSoulEventHurt(
		            Player_CalculateDamage(damage, 1, 1)
		        );
		    }
		}
		draw_set_color(c_lime);

		for (var d = 0; d <= width / 16; d += step)
		{
		    var cx = bx + dx * d;
		    var cy = by + dy * d;

		    draw_circle(cx, cy, thickness, false);
		}
    }
}

surface_reset_target();