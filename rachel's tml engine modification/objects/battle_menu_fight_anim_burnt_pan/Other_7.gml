if howmanytime = 0{
for (var i = 0; i < array_length(directions); i++) {
    var inst = instance_create_depth(x, y, depth, battle_menu_fight_anim_burnt_pan_mini);
    inst.direction = directions[i];
    Anim_Create(inst,"speed",0,0,1,1.5,25)
    Anim_Create(inst,"speed",0,0,2.5,-2.0,20,25)
}
howmanytime = 1
}
